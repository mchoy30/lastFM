# frozen_string_literal: true

new_album = Album.create(artist: 'Say anything', album_title: 'Is a real boy')

new_album.songs.create(name: 'I want to know your plans')
