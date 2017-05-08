class CreatePlats < ActiveRecord::Migration[5.0]
  def change
    create_table :plats do |t|
      t.string :title
      t.string :description
      t.string :link
      t.integer :price

      t.timestamps
    end
  end
end
