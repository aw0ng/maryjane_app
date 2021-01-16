class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :strain
      t.integer :price_per_gram
      t.string :mood
      t.integer :thc_percentage
      t.string :image_url

      t.timestamps
    end
  end
end
