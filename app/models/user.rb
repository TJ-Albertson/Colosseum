class User < ApplicationRecord
    validates :username, presence: true

    def self.search(search)
        if search
          find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
        else

        end
      end
end
