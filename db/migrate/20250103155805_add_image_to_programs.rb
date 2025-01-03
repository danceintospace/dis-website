class AddImageToPrograms < ActiveRecord::Migration[8.0]
  def change
    add_column :programs, :image, :string
  end
end
