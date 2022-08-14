class AddImageUrlToCats < ActiveRecord::Migration[6.1]
  def change
    add_column :cats, :image_url, :string
  end
end
