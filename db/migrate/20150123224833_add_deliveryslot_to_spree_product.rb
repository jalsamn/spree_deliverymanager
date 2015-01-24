class AddDeliveryslotToSpreeProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :deliveryslot, :string
  end
end
