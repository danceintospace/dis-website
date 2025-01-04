# frozen_string_literal: true

class AddGalleryToImages < ActiveRecord::Migration[8.0]
  def change
    add_column :images, :gallery, :string
  end
end
