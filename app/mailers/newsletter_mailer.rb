class NewsletterMailer < ApplicationMailer
  # default from: 'notifications@example.com'
 
  def subscribe
    @newsletter = params[:newsletter]
    @url  = 'http://example.com/login'

    mail(to: @newsletter.email, subject: 'Inscrição no Peixe Elétrico')
  end
end
