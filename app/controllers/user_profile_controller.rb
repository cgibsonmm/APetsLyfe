class UserProfileController < ApplicationController
  def index
  end

  def new
    @profile = current_user.user_profile.build
  end

  def create
    @profile = current_user.user_profile.build(profile_params)
    if @profile.save
      flash[:notice] = 'Created Profile'
      redirect_to 'show'
    else
      flash[:warning] = 'Error'
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  private

  def profile_params
    params.require(:user_profile).permit(:about, :user_id)
  end
end
