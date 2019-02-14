# frozen_string_literal: true

class Album < ApplicationRecord
  has_many :songs
  has_one :album_information
  validates :artist, :album_title, presence: true
end
