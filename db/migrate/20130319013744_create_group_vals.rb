class CreateGroupVals < ActiveRecord::Migration
  def up
    create_table :group_vals, :id => false do |t|
      t.string :group_type, :null => false
      t.string :group_description
 
      t.timestamps
    end
    add_index :group_vals, [:group_type], :unique => true
  end

  def down
  	drop_table :group_vals
  end
end
