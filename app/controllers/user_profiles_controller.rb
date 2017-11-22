class UserProfilesController < ApplicationController
  def index
    @profiles = UserProfile.all
  end

  def new
    @profile = UserProfile.new
  end

  def create
    @profile = current_user.build_user_profile(profile_params)
    if @profile.save
      flash[:success] = 'Your profile has been saved'
      redirect_to user_profiles_path
    else
      flash[:warning] = "Error creating Profile"
      render 'new'
    end
  end

  def show
    @profile = UserProfile.find(params[:id])
  end

  def edit
  end

  private
  def profile_params
    params.require(:user_profile).permit(:about, :user_id)
  end
end
