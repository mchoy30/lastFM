# frozen_string_literal: true

AlbumInformation.destroy_all
Song.destroy_all
Album.destroy_all
num_of_plays = rand(0..35_000_000).to_i
new_album = Album.create(artist: 'Say anything', album_title: 'Is a real boy')

new_album.songs.create(name: 'I want to know your plans')

# new_album.album_nformation.create(play_count: 35, date: 'a')

 AlbumInformation.create(play_count: 35, date: 'a', album: new_album)

# 10.times do
#   new_album = Album.create(artist: Faker::Music::RockBand.unique.name, album_title: Faker::Verb.unique.past_participle)
#   num_of_plays = rand(0..35_000_000).to_i

#   new_album.album_informations.create(play_count: num_of_plays, date: Faker::Date.between(2_000_000.days.ago, Date.today))
#   num_of_songs = rand(3..12)

#   num_of_songs.times do
#   new_album.songs.create(name: Faker::Verb.unique.base)
#   end
# end

puts "num of albums #{Album.count}"

puts "num of songs #{Song.count}"
