class AddImageToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :user, :image_url, :string
  end
end
