class AddColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :registrations, :name, :string
    add_column :registrations, :stars, :integer
    add_column :registrations, :comment, :text
  end
end
