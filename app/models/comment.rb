class Comment < ApplicationRecord
    include Archive
    belongs_to :article
    validates :author, :body, presence: true
end
