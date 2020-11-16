class PasswordsMailer < ApplicationMailer
  default from: 'passwords@chazona.today'
  def change_password(user)
    @user = user

    mail(to: user.email, subject: "[Volition] Password reset")
  end
end
