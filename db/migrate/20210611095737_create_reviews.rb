class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bed, null: false, foreign_key: true
      t.text :comment, null: false

      t.timestamps
    end
  end
end
