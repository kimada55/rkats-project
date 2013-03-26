class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title, :null => false
      t.string :type, :null => false
      t.string :detail, :null => false
      t.date :post_date, :null => false
      t.string :restricted
      t.date :event_date
      t.date :deadline_date
      t.date :exp_date
      t.string :deleted
      t.integer :user_post_id, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
