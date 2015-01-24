class AddTimeslotidToSpreeProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :timeslot_id, :integer
  end
end
