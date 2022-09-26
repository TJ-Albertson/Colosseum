class Thumb < ApplicationRecord
    validates :name, presence: true
    validates :tmdbId, presence: true
    validates :userId, presence: true
    validates :thumb, presence: true

end
