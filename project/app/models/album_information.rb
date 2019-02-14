# frozen_string_literal: true

class AlbumInformation < ApplicationRecord
  belongs_to :album
  validates :date, :play_count, presence: true
  validates :play_count, numericality: { only_integer: true }
end
