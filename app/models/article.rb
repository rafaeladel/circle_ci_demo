class Article < ApplicationRecord
    include Archive
    has_many :comments, dependent: :delete_all
    validates :title, :body, presence: true
end
