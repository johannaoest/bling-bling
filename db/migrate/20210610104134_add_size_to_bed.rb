class AddSizeToBed < ActiveRecord::Migration[6.0]
  def change
    add_column :beds, :size, :string
  end
end
