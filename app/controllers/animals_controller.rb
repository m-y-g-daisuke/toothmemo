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
    @animal=Animal.find(params[:id])
  end

  def update
    @animal=Animal.find(params[:id])
    if @animal.update(animal_params)
      redirect_to animal_path(@animal)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def animal_params
    params.require(:animal).permit(:name,:birth,:sex,:breed_id,:image).merge(user_id: current_user.id)
  end

end
