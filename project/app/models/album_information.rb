class AlbumInformation < ApplicationRecord
  validates :date, :play_count, presence: true
  validates :play_count, numerically: {only_integer: true}
end
