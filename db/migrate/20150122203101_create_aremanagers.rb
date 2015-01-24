class CreateAremanagers < ActiveRecord::Migration
  def change
    create_table :aremanagers do |t|
      t.integer :zipcode
      t.integer :zone

      t.timestamps
    end
  end
end
