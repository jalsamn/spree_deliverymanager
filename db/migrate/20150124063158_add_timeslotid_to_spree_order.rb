class AddTimeslotidToSpreeOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :timeslot_id, :integer
  end
end
