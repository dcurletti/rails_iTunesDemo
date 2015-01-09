class FixNameAgain < ActiveRecord::Migration
  def change
  	change_column :tracks, :name, :string, null: false
  end
end
