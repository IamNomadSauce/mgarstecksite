class PicsController < ApplicationController
  before_action :find_pic, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  helper_method :current_user, :user_signed_in?

  def index
    @pics = Pic.all.order('created_at DESC')
  end

  def new
    @pic = current_user.pics.build
  end

  def show

  end

  def create
    @pic = current_user.pics.build(pic_params)

    if @pic.save
      flash[:success] = "The picture was posted properly"
      redirect_to pic_path(@pic)
    else
      redirect_to :new
    end
  end

  def edit
  end

  def update
    if @pic.update(pic_params)
      flash[:success] = "Picture updated successfully"
      redirect_to @pic
    else
      render 'edit'
    end
  end

  def destroy
    @pic.destroy

    redirect_to pics_path
  end

  private

  def pic_params
    params.require(:pic).permit(:title, :description, :image)
  end

    @pic = Pic.find(params[:id])
  end

  def require_user
    if !user_signed_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to root_path
    end
  end

  def require_same_user
    if current_user != @pic.user
      flash[:danger] = "You can only do this action if you are the author"
      redirect_to root_path
    end
  end
end
