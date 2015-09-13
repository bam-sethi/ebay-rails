class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.boolean :recommend
      t.integer :customer_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
