class Destination < ApplicationRecord
    has_many :posts, dependent: :delete_all
    has_many :bloggers, through: :posts
end
