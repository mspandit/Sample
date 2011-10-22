class AddUserNewToUpdate < ActiveRecord::Migration
  def change
    add_column :users, :new_to_update, :boolean, :nil => false, :default => false
  end
end
