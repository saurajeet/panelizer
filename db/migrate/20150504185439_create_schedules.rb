class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.string :email
      t.string :panelist
      t.datetime :on
      t.string :job
      t.string :jdlink

      t.timestamps
    end
  end
end
