class PostsController < ApplicationController
  before_action :set_animal
  def index
    @posts=@animal.posts.order(recorded_at: "DESC")
  end

  def show
    @post=@animal.posts.find(params[:id])
  end

  def new
    @post=@animal.posts.new
  end
  
  def create
    @post=@animal.posts.new(post_params)
    if @post.save
      flash[:success] = " 新しい記録を保存しました。#{@animal.name}ちゃんは今日もがんばりました◎♪"
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end
  
  def edit
    @post=@animal.posts.find(params[:id])
  end
  
  def update
    @post=@animal.posts.find(params[:id])
    if @post.update(post_params)
      flash[:success] = " 編集した記録を保存しました。#{current_user.name}さん、いつもお疲れ様です★"
      redirect_to animal_post_path(@animal)
    else
      render :edit
    end
  end

  def destroy
    post=@animal.posts.find(params[:id])
    post.destroy
    flash[:danger] = " 記録を削除しました。はみがき記録をまた作っていきましょう♫ "
    redirect_to animal_posts_path(@animal)
  end
  
  private

  def post_params
    params.require(:post).permit(:recorded_at, :content_g,:content_b, :memo, :image, tool_ids:[], tag_word_ids:[] )
  end

  def set_animal
    @animal=Animal.find(params[:animal_id])
  end

end
