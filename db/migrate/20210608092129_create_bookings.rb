class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :bed, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.decimal :duration
      t.decimal :total_price

      t.timestamps
    end
  end
end
