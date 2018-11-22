class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      t.string :number
      t.string :nickname
      t.boolean :enabled, default: true
      t.boolean :deleted, default: false

      t.timestamps
    end
  end
end
