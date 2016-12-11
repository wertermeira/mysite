class NotifyMailer < ApplicationMailer
  default from: "wertermeira@gmail.com"

  def sendmail
    mail(to: "wertermeira@hotmail.com",subject: "bem-vindo")
  end
end
