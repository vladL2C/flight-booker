class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :departure_id
      t.integer :arriving_id
      t.integer :flight_number
      t.integer :duration

      t.timestamps
    end
  end
end
