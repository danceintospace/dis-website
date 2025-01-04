# frozen_string_literal: true

namespace :blog_posts do
  desc 'Generate slugs for all blog posts'
  task generate_slugs: :environment do
    BlogPost.find_each do |post|
      # Use send to call the private method
      post.send(:generate_slug) if post.slug.blank? && post.title.present?
      post.save
    end
  end
end
