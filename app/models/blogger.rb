class Blogger < ApplicationRecord
    has_many :posts, dependent: :delete_all
    has_many :destinations, through: :posts

    validates :name, presence: true, uniqueness: true
    validates :bio, length: {minimum: 30}
end
