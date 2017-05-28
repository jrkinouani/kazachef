class AddAvailableToPlats < ActiveRecord::Migration[5.0]
  def change
    add_column :plats, :available, :string
  end
end
