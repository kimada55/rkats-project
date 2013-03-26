class CreateUserGroups < ActiveRecord::Migration
  def up
    create_table :user_groups, :id => false do |t|
      t.string :uid, :null => false
      t.string :group, :null => false

      t.timestamps
    end
    add_index :user_groups, [:uid, :group], :unique => true
  end

  def down
  	drop_table :user_groups
  end
end
