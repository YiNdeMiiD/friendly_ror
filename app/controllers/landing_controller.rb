class LandingController < ApplicationController
  def index
  end
  
  def get_email
    if params[:email]
      user = User.find_or_create_by(email: params[:email])
      VideoMailer.video_follow(user).deliver_now
      render :thanks
    else
      render :index
    end
  end

  def thanks
  end

end
