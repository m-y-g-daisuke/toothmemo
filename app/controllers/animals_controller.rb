class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update]
  def index
  end

  def show
    @post=Post.where(animal_id:params[:id]).order(recorded_at: "DESC").first
    @graph=Post.where(animal_id:params[:id]).last(14)
    @breed=@animal.breed
    @age=@animal.age
  end
  
  def new
    @animal=Animal.new
  end

  def create
    @animal=Animal.new(animal_params)
    if @animal.save
      flash.now[:success] = "#{@animal.name}ちゃんを登録しました。歯磨きがんばりましょう♪"
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
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
    params.require(:animal).permit(:name, :birth, :sex, :breed_id, :image).merge(user_id: current_user.id)
  end

  def set_animal
    @animal=Animal.find(params[:id])
  end

end
