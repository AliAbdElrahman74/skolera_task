class AddDeletedAtToPhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    add_column :phone_numbers, :deleted_at, :datetime
    add_index :phone_numbers, :deleted_at
  end
end
