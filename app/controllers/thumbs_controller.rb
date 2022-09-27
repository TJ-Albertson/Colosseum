class ThumbsController < ApplicationController
    def show
        @thumb = Thumb.where(userId: params[:userId], tmdbId: params[:tmdbId])
    end

    def new
      @thumb = Thumb.new
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
      params.permit(:tmdbId, :userId, :value)
    end

  end