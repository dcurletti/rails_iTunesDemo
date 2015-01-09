class AddNametoAlbum < ActiveRecord::Migration
  def change
  	add_column :albums, :name, :string
  	change_column :albums, :name, :string, null: false
  end
end
