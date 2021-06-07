class CreateBeds < ActiveRecord::Migration[6.0]
  def change
    create_table :beds do |t|
      t.string :category
      t.string :title
      t.string :description
      t.string :location
      t.decimal :price

      t.timestamps
    end
  end
end
