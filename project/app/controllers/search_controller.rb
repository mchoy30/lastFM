# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:q]
    @album_found = Album.where('album_title LIKE ?', "%#{@query}%")
  end
end
