class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.integer :age
      t.text :description
      t.boolean :house_cat
      t.integer :pay

      t.timestamps
    end
  end
end
