class Comment < ApplicationRecord
    belongs_to :post

    validates :usuario_email, presence: true
    validates :comentario, presence: true
end
