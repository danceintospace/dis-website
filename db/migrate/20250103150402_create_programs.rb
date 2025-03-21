# frozen_string_literal: true

class CreatePrograms < ActiveRecord::Migration[8.0]
  def change
    create_table :programs do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
