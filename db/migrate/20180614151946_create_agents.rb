class CreateAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :status
      t.boolean :admin, default: false
      t.boolean :deleted, default: false

      t.timestamps
    end
  end
end
