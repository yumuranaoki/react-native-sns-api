class AddImgToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :img, :string
    remove_column :images, :uri, :string
  end
end
