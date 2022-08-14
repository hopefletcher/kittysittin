class AddNameToCats < ActiveRecord::Migration[6.1]
  def change
    add_column :cats, :name, :string
  end
end
