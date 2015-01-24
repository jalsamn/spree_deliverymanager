Spree::Order.class_eval do
  belongs_to :timeslot, class_name: 'Spree::Timeslot'
  attr_accessor :timeslot_id
  
end