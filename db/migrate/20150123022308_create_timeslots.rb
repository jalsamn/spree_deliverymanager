class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.date :ddate
      t.string :dtime

      t.timestamps
    end
  end
end
