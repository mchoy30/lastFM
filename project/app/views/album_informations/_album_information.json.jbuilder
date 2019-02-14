json.extract! album_information, :id, :play_count, :date, :created_at, :updated_at
json.url album_information_url(album_information, format: :json)
