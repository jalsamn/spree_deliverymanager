class  Spree::Timeslot < ActiveRecord::Base
  validates :ddate, uniqueness: { scope: :dtime, message: "This Date and Time is already taken"}
  has_many :shipments, class_name: 'Spree::Shipments'
end
