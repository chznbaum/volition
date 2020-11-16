class GiftsMailer < ApplicationMailer
  default from: "gifts@chazona.today"

  def gift_notification(gift)
    @gift   = gift
    @sender = @gift.sender

    mail(
      to: @gift.recipient_email,
      subject: "[Volition] You have received a gift from #{@sender.name}"
    )
  end
end
