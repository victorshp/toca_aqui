class AddPurchaseToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :purchased, :boolean, default: false
  end
end
