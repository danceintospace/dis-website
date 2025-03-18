class CreateTours < ActiveRecord::Migration[8.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :location
      t.string :category

      t.timestamps
    end
  end
end
