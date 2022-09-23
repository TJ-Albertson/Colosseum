class Thumb < ApplicationRecord
    validates :tmdbId, :userId, :thumb

    def self.search(search)
        if search  
            thumb_name = Sushi.find_by(name: search)
                if thumb_name
                    self.where(thumb_id: thumb_name)
                else
                    @thumbs = Thumb.all
                end
            else
                @thumbs = Thumb.all
            end
        end
        
end
