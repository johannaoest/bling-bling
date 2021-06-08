class DeleteIsOwnerFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :is_owner, :boolean
  end
end
