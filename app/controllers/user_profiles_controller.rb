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
      if params[:user_profile][:avatar].present?
        render :crop
      else
        flash.now[:success] = 'Your profile has been saved'
        redirect_to @profile
      end
    else
      flash.now[:warning] = "Error creating Profile"
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @profile.update_attributes(update_params)
      if params[:user_profile][:avatar].present?
        render :crop
      else
        flash.now[:success] = 'Your profile has been saved'
        redirect_to @profile
      end
    else
      flash.now[:error] = 'Error updating profile'
      render 'edit'
    end
  end

  private

  def profile_owner?
    find_profile
    unless user_signed_in? && @profile.user_id == current_user.id
      flash.now[:error] = 'You must own this profile to make changes'
      render 'show'
    end
  end

  def find_profile
    @profile = UserProfile.find(params[:id])
  end

  def update_params
    params.require(:user_profile).permit(
      :about,
      :avatar,
      :avatar_original_w,
      :avatar_original_h,
      :avatar_crop_x,
      :avatar_crop_y,
      :avatar_crop_w,
      :avatar_crop_h,
      :age,
      :city,
      :state,
      :zip_code
    )
  end

  def profile_params
    params.require(:user_profile).permit(:about, :avatar, :user_id, :age, :city, :state, :zip_code)
  end
end
