class AddCategoryToPlats < ActiveRecord::Migration[5.0]
  def change
    add_column :plats, :category, :string
  end
end
