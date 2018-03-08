class Event < ApplicationRecord
  attr_accessor :address_line_1, :address_line_2, :attending, :city, :description, :event_date, :event_time, :name, :phone, :postcode, :scope, :venue, :lat_long, :latitude, :longitude

  geocoded_by :postcode
  after_validation :geocode   # auto-fetch coordinates - background work by Rubygem 'geocoder'

  default_scope order('event_time ASC')

  has_and_belongs_to_many :users, :join_table => "events_users"
end
