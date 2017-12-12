class PetsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_pet, only: [:show, :edit, :update]
  before_action :pet_owner?, only: [:edit, :update]

  def index
    @pets = current_user.pets.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = current_user.pets.build(pet_params)
    if @pet.save
      if params[:pet][:avatar].present?
        render :crop
      else
        flash.now[:success] = "Successfully created a new pet"
        redirect_to user_pets_path
      end
    else
      flash.now[:error] = 'Error'
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @pet.update_attributes(update_params)
      if params[:pet][:avatar].present?
        render :crop
      else
        flash.now[:success] = "Successfully updated your pet"
        redirect_to user_pets_path
      end
    else
      flash.now[:error] = 'Error'
      render 'edit'
    end
  end

  private

  def pet_owner?
    find_pet
    unless user_signed_in? && @pet.user_id == current_user.id
      flash.now[:error] = 'You must own this pet to make changes'
      render 'show'
    end
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(
      :name,
      :date_of_birth,
      :user_id,
      :avatar,
      :avatar_original_w,
      :avatar_original_h,
      :avatar_crop_x,
      :avatar_crop_y,
      :avatar_crop_w,
      :avatar_crop_h,
    )
  end

  def update_params
    params.require(:pet).permit(
      :name,
      :date_of_birth,
      :avatar,
      :avatar_original_w,
      :avatar_original_h,
      :avatar_crop_x,
      :avatar_crop_y,
      :avatar_crop_w,
      :avatar_crop_h,
    )
  end
end
