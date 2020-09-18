class Post < ApplicationRecord
    belongs_to :user
    has_many :comments

    validates :titulo, presence: true
    validates :descricao, presence: true

    def self.buscar(pesquisa)
        posts = Post.all
        if (pesquisa)
            pesquisa = '%' + pesquisa + '%'

            posts = Post.where("titulo ILIKE ? OR descricao ILIKE ?", pesquisa, pesquisa)
        end

        posts
    end
end
