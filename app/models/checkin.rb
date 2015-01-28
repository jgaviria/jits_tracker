class Checkin < ActiveRecord::Base
  belongs_to :student
  has_many :students

  accepts_nested_attributes_for :students
end
