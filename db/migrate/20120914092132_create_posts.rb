class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :gist_id
      t.boolean :hidden

      t.timestamps
    end
    add_index :posts, :gist_id, :unique => true
  end
end
