class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :brief_message
      t.text :details

      t.timestamps
    end
  end
end
