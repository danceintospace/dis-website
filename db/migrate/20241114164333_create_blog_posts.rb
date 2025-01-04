# frozen_string_literal: true

class CreateBlogPosts < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_posts, id: :uuid do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.timestamps null: false
    end
  end
end
