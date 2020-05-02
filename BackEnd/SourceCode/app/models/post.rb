class Post < ApplicationRecord
    belongs_to :language
    belongs_to :user
end
