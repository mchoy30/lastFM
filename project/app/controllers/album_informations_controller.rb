# frozen_string_literal: true

class AlbumInformationsController < ApplicationController
  before_action :set_album_information, only: %i[show edit update destroy]

  # GET /album_informations
  # GET /album_informations.json
  def index
    @album_informations = AlbumInformation.all
  end

  # GET /album_informations/1
  # GET /album_informations/1.json
  def show
    @album_information = AlbumInformation.find(params[:id])
  end

  # GET /album_informations/new
  def new
    @album_information = AlbumInformation.new
  end

  # GET /album_informations/1/edit
  def edit; end

  # POST /album_informations
  # POST /album_informations.json
  def create
    @album_information = AlbumInformation.new(album_information_params)

    respond_to do |format|
      if @album_information.save
        format.html { redirect_to @album_information, notice: 'Album information was successfully created.' }
        format.json { render :show, status: :created, location: @album_information }
      else
        format.html { render :new }
        format.json { render json: @album_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /album_informations/1
  # PATCH/PUT /album_informations/1.json
  def update
    respond_to do |format|
      if @album_information.update(album_information_params)
        format.html { redirect_to @album_information, notice: 'Album information was successfully updated.' }
        format.json { render :show, status: :ok, location: @album_information }
      else
        format.html { render :edit }
        format.json { render json: @album_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_informations/1
  # DELETE /album_informations/1.json
  def destroy
    @album_information.destroy
    respond_to do |format|
      format.html { redirect_to album_informations_url, notice: 'Album information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_album_information
    @album_information = AlbumInformation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def album_information_params
    params.require(:album_information).permit(:play_count, :date)
  end
end
