# frozen_string_literal: true

Song.destroy_all
Album.destroy_all

new_album = Album.create(artist: 'Say anything', album_title: 'Is a real boy')

new_album.songs.create(name: 'I want to know your plans')

10.times do
  new_album = Album.create(artist: Faker::Music::RockBand.unique.name, album_title: Faker::Verb.unique.past_participle)

  num_of_songs = rand(3..12)

  num_of_songs.times do
    new_album.songs.create(name: Faker::Verb.unique.base)
  end
end

puts "num of albums #{Album.count}"

puts "num of songs #{Song.count}"
