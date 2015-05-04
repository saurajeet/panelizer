class CreateJobdescriptions < ActiveRecord::Migration
  def change
    create_table :jobdescriptions do |t|
      t.string :name
      t.string :description
      t.string :base_prefix

      t.timestamps
    end
  end
end
