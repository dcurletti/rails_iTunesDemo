class ChangeTracksName < ActiveRecord::Migration
  def change
  	change_column :tracks, :name, :integer, null: false
  end
end
