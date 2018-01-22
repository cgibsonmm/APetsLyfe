class CreateImagePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :image_posts do |t|
      t.references :user, foreign_key: true
      t.references :pet, foreign_key: true
      t.text :caption

      t.timestamps
    end
  end
end
