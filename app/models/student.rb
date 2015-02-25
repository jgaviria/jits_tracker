class Student < ActiveRecord::Base
  has_many :checkins
  belongs_to :checkin

  accepts_nested_attributes_for :checkins


  validates :first_name, :current_rank, presence: true

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :default_url => "50x50>" },   :default_url => 'index_:style.jpg'
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def self.search(search)

  where('first_name LIKE ?', "%#{search}%")

  end

end


