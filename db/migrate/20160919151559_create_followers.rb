class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
    	t.integer :follower_id
    	t.references :user
      t.timestamps null: false
    end
  end
end
