class CreateBookings < ActiveRecord::Migration
	def change
		create_table :bookings do |t|
			t.datetime :arrive
			t.datetime :depart
			t.integer :user_id
			t.integer :property_id
			t.timestamps :created_at
			t.timestamps :updated_at
		end
	end
end
