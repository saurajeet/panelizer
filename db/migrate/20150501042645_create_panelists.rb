class CreatePanelists < ActiveRecord::Migration
  def change
    create_table :panelists do |t|
      t.string :name
      t.string :mail

      t.timestamps
    end
  end
end
