class Student < ActiveRecord::Base
  has_many :checkins
  belongs_to :checkin

  accepts_nested_attributes_for :checkins


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :default_url => "50x50>" },   :default_url => 'index_:style.jpg'
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end