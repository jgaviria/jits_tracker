class Student < ActiveRecord::Base
  has_many :checkins
  belongs_to :checkin

  accepts_nested_attributes_for :checkins
end
