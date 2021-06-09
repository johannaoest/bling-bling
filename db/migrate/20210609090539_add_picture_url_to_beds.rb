class AddPictureUrlToBeds < ActiveRecord::Migration[6.0]
  def change
    add_column :beds, :picture_url, :string
  end
end
