class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
    	t.integer :name, null: false
    	t.boolean :bonus, null: false
    	t.text :lyrics

      t.timestamps null: false
    end
  end
end
