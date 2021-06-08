class AddDefaultFalseToIsOwnerUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :is_owner, :boolean, :default => false
  end
end
