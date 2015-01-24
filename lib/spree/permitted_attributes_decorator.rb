Spree::PermittedAttributes.class_eval do
  @@shipment_attributes.push(:timeslot_id)
end