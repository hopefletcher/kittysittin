class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :cat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
