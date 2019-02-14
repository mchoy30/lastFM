class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :artist
      t.string :album_title

      t.timestamps
    end
  end
end
