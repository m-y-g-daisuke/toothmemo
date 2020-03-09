class AnimalsController < ApplicationController
  def index
  end

  def show
  end
  
  def new
    @animal=Animal.new
  end

  def create
    @animal=Animal.new(animal_params)
    if @animal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def animal_params
    params.require(:animal).permit(:name,:birth,:sex,:breed_id).merge(user_id: current_user.id)
  end

end
