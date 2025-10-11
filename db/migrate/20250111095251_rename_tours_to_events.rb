class RenameToursToEvents < ActiveRecord::Migration[8.0]
  def change
    rename_table :tours, :events
  end
end
