class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :user_id
      t.string :slug

      t.timestamps
    end
  end
end
