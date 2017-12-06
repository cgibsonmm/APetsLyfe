class PetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @pets = current_user.pets.all
  end

  def new
    @pet = current_user.pets.build
  end

  def create
    @pet = current_user.pets.build(pet_params)
    if @pet.save
      flash.now[:success] = "Successfully created a new pet"
      redirect_to user_pets_path
    else
      flash.now[:error] = 'Error'
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :user_id, :avatar)
  end
end
