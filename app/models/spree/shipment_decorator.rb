Spree::Shipment.class_eval do
  belongs_to :timeslot, class_name: 'Spree::Timeslot'
  
  
end