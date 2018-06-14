class CreatePhoneCalls < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_calls do |t|
      t.string :status
      t.references :phone_number, foreign_key: true
      t.references :agent, foreign_key: true

      t.timestamps
    end
  end
end
