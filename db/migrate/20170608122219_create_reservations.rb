class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :plat_id
      t.integer :takeaway
      t.integer :portion

      t.timestamps
    end
  end
end
