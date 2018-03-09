class Event < ApplicationRecord

  geocoded_by :postcode
  after_validation :geocode   # auto-fetch coordinates - background work by Rubygem 'geocoder'

  # Put in again when I can work out the syntax
  # self.default_scope order('event_time ASC')

  has_and_belongs_to_many :users, :join_table => "events_users"
end
