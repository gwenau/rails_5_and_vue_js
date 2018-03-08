class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :event_date
      t.datetime :event_time
      t.string :attending
      t.string :venue
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :postcode
      t.string :phone
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
