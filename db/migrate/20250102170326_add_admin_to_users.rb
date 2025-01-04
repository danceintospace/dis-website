# frozen_string_literal: true

class AddAdminToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :admin, :boolean, null: false, default: false
  end
end
