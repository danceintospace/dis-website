# frozen_string_literal: true

class AddTitleToBlogPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :blog_posts, :title, :string
  end
end
