class User < ApplicationRecord
    has_many :posts
    has_many :languages, through: :posts
end
