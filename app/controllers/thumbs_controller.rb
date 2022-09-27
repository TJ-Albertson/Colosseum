class ThumbsController < ApplicationController

    def create
      @thumb = Thumb.find_by(userId: params[:userId], tmdbId: params[:tmdbId])
      if @thumb
        @thumb.value = params[:value]
        @thumb.save
      else
        @thumb = Thumb.new(userId: params[:userId], tmdbId: params[:tmdbId], value: params[:value])
        @thumb.save
      end
    end

    private
    def thumb_params
      params.permit(:tmdbId, :userId, :value, :authenticity_token)
    end

  end