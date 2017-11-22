class UserProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_profile, only: [:show, :edit, :update]
  before_action :profile_owner?, only: [:edit, :update]

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
  end

  def edit
  end

  def update
    if @profile.update_attributes(update_params)
      flash[:notice] = 'Your profile has been updated'
      redirect_to @profile
    else
      flash[:error] = 'Error updating profile'
      render 'edit'
    end
  end

  private

  def profile_owner?
    find_profile
    unless user_signed_in? && @profile.user_id == current_user.id
      flash[:error] = 'You must own this profile to make changes'
      render 'show'
    end
  end

  def find_profile
    @profile = UserProfile.find(params[:id])
  end

  def update_params
    params.require(:user_profile).permit(:about)
  end

  def profile_params
    params.require(:user_profile).permit(:about, :user_id)
  end
end
