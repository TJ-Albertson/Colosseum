class ThumbsController < ApplicationController
    def index
        @thumb = Thumb.where(userId: params[:userId], tmdbId: params[:tmdbId])
    end

    def create
        @thumb = Thumb.new(thumb_params)
        if @thumb.save
        end
      end
    
    def update
        @thumb = Thumb.where(userId: params[:userId], tmdbId: params[:tmdbId])
        if @thumb.update(thumb_update_params)
        end
    end

    private
    def thumb_params
      params.require(:tmdbId, :userId, :thumb)
    end

    def thumb_update_params
        params.require(:thumb)
    end

  end