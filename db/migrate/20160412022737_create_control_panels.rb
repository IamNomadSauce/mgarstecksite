class CreateControlPanels < ActiveRecord::Migration
  def change
    create_table :control_panels do |t|
      t.string :index
      t.string :update
      t.string :show
      t.string :destroy

      t.timestamps null: false
    end
  end
end
