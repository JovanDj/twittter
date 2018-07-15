class Like < ApplicationRecord
    belongs_to :user
    belongs_to :tweeet

    validates_presence_of :user, :tweeet
end
