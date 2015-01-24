class CreateSpreeAreamanagers < ActiveRecord::Migration
  def change
    create_table :spree_areamanagers do |t|
      t.integer :zipcode
      t.integer :zone

      t.timestamps
    end
  end
end
