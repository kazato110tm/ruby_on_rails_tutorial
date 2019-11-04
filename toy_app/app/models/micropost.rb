class Micropost < ApplicationRecord
    belong_to :user
    validates :context, length: {maximum: 140}, presence: true
end
