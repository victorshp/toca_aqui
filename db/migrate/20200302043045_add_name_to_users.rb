class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, presence: true
    add_column :users, :last_name, :string, presence: true
  end
end
