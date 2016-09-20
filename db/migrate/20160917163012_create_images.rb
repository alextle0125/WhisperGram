class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.string :caption
    	t.string :image_url
    	t.integer :likes
    	t.references :user
      t.timestamps null: false
    end
  end
end
