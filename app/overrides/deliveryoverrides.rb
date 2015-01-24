Deface::Override.new(:virtual_path => "spree/checkout/_delivery", 
                     :name => "cdelivery", 
                     :replace => "[data-hook='buttons']", 
                     :partial => "shared/cdelivery")

Deface::Override.new(:virtual_path => "spree/shared/_order_details", 
                      :name => "corderview", 
                      :replace => "[data-hook='order-shipment']", 
                     :partial => "shared/corderview")

Deface::Override.new(:virtual_path => "spree/checkout/_payment", 
                     :name => "cpayment", 
                     :replace => "[data-hook='buttons']", 
                     :partial => "shared/cpayment")

Deface::Override.new(:virtual_path => 'spree/admin/orders/edit',
  :name => 'cadminorderedit',
  :replace => "[data-hook='admin_order_edit_header']",
  :partial => "spree/admin/cadminorderedit")
