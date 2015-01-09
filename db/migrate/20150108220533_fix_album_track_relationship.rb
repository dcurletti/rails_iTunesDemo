class FixAlbumTrackRelationship < ActiveRecord::Migration
  def change
  	remove_column :albums, :track_id
  	add_column :tracks, :album_id, :integer
  	change_column :tracks, :album_id, :integer, null: false
  end
end
