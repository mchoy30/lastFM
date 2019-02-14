class Album < ApplicationRecord
  has_many :songs
  validates :artist, :album_title, presence: true
end
