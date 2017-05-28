class AddHalalToPlats < ActiveRecord::Migration[5.0]
  def change
    add_column :plats, :halal, :boolean , default: false
  end
end
