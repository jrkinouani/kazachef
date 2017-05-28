class AddPersonToPlats < ActiveRecord::Migration[5.0]
  def change
    add_column :plats, :person, :integer
  end
end
