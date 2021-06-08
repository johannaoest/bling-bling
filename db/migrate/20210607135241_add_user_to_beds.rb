class AddUserToBeds < ActiveRecord::Migration[6.0]
  def change
    add_reference :beds, :user
  end
end
