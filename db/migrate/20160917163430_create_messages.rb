class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.text :content
    	t.integer :user_to
    	t.references :user
    	t.timestamps :expiry_time
    	t.boolean :read, null: false, default: false
    	t.boolen :saved, null: false, default: false
      t.timestamps null: false
    end
  end
end
