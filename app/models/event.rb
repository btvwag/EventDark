class Event < ActiveRecord::Base
  validates_presence_of :name, :start, :location, :max_attendees
end
