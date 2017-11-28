class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :age
      t.integer :picup
      t.string :school
      t.string :hobby
      t.string :region
      t.string :video
      t.string :image
      t.string :link
      t.integer :not_checked
      t.string :listing_title
      t.text :listing_content
      t.string :price_perhour
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
