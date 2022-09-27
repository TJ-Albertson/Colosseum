class Thumb < ApplicationRecord
    validates :tmdbId, presence: true
    validates :userId, presence: true
    validates :value, presence: true
end
