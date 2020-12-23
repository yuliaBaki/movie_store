class RemoveColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :registrations, :name, :string
    remove_column :registrations, :email, :string
    remove_column :registrations, :how_heard, :string
  end
end
