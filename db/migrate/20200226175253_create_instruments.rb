class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :inst_type
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
