class LandingController < ApplicationController
  def index
    @video_token ||= params[:video_token]
  end
  
  def get_email
    if params[:email]
      user = User.find_or_create_by(email: params[:email])
      deliver = Delivery.find_by_token(params[:token])
      VideoMailer.video_follow(user, deliver).deliver_now if deliver
      render :thanks
    else
      render :index
    end
  end

  def thanks
  end

end
