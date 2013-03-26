class CreateGroupPermissions < ActiveRecord::Migration
  def up
    create_table :group_permissions, :id => false do |t|
      t.string :group_type, :null => false
      t.string :action, :null => false
      t.string :action_ind, :null => false

      t.timestamps
    end
    add_index :group_permissions, [:group_type, :action], :unique => true
  end

  def down
  	drop_table :group_permissions
  end
end
