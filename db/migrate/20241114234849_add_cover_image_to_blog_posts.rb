# frozen_string_literal: true

class AddCoverImageToBlogPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :blog_posts, :cover_image, :string
  end
end
