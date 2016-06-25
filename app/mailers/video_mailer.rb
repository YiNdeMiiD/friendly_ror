class VideoMailer < ApplicationMailer
  default from: "friendly_ror@mailer.com"

  def video_follow(user)
    @user = user
    mail( to: @user.email, subject: 'Не желаете ли спама?' )
  end

end
