class PostMailer < ApplicationMailer
    def new_post
        @newsletter = params[:newsletter]
        @post = params[:post]

        mail(to: @newsletter.email, subject: 'Peixe Elétrico - Nova Postagem')
    end
end
