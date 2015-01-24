class AddTimeslotidToSpreeShipment < ActiveRecord::Migration
  def change
    add_column :spree_shipments, :timeslot_id, :integer
  end
end
