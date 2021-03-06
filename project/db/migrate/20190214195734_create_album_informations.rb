# frozen_string_literal: true

class CreateAlbumInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :album_informations do |t|
      t.integer :play_count
      t.string :date
      t.references :album, foreign_key: true
      t.timestamps
    end
  end
end
