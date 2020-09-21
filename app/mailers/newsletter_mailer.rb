class NewsletterMailer < ApplicationMailer
  # default from: 'notifications@example.com'
 
  def subscribe
    @newsletter = params[:newsletter]
    @url  = 'http://example.com/login'

    mail(to: @newsletter.email, subject: 'Inscrição no Peixe Elétrico')
  end

  def unsubscribe
    @newsletter = params[:newsletter]
    @url  = 'http://example.com/login'

    mail(to: @newsletter.email, subject: 'Cancelamento de inscrição no Peixe Elétrico')
  end
end
