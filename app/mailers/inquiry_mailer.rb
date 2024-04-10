class InquiryMailer < ApplicationMailer

  def send_mail(inquiry)
    @inquiry = inquiry
    mail to: ENV['MAILER_ADDRESS'], subject: '[お問い合わせ]' + @inquiry.subject
  end

end
