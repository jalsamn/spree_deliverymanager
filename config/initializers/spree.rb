config = Rails.application.config
config.spree.calculators.shipping_methods << Spree::Calculator::Shipping::DynamicDeliveryCost
Spree::PermittedAttributes.shipment_attributes << :timeslot_id
