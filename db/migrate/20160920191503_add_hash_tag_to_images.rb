class AddHashTagToImages < ActiveRecord::Migration
  def change
    add_column :images, :hash_tag, :text
  end
end
