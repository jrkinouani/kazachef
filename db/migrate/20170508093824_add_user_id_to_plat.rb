class AddUserIdToPlat < ActiveRecord::Migration[5.0]
  def change
    add_column :plats, :user_id, :integer
  end
end
