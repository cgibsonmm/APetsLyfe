class AllPetsController < ApplicationController
  def index
    @pets = Pet.all
  end
end
