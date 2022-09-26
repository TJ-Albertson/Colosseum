class Thumb < ApplicationRecord
    validates :tmdbId, presence: true
    validates :userId, presence: true
    validates :thumb, presence: true

end
