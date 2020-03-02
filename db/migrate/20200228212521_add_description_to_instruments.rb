class AddDescriptionToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :description, :string
  end
end
