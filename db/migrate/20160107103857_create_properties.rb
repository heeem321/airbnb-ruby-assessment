class CreateProperties < ActiveRecord::Migration
	def change
			create_table :properties do |t|
			t.string :p_name
			t.string :description
			t.integer :user_id
		end
	end
end
