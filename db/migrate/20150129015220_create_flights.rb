class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
    	t.references :arriving_airport
    	t.references :departing_airport
    	t.datetime   :departure
    	t.integer    :duration
      t.timestamps
    end
  end
end
