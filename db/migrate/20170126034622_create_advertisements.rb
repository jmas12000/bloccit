class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.text :body
      t.text :price

      t.timestamps null: false
    end
  end
end
