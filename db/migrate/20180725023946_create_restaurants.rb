class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :interger
      t.string :category
      t.string :review
      t.string :string

      t.timestamps
    end
  end
end
