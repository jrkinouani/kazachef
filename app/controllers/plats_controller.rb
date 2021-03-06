class PlatsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_plat, only: [:show, :edit, :update, :destroy]
  before_action :current_user, only: [:edit, :update, :destroy]


  def index
    @plats = Plat.all.order("created_at DESC")
  end

  def show
    @comments = Comment.where(plat_id: @plat)
  end

  def new
    @plat = current_user.plats.build
  end

  def create
    @plat = current_user.plats.build(plat_params)

      if @plat.save
        redirect_to @plat
      else
        render "new"
      end
  end

  def destroy
    @plat.destroy
    render "new"
  end

  def edit
  end

  def update
    if @plat.update(plat_params)
      redirect_to @plat
    else
      render "edit"
    end
  end

  private

  def plat_params
    params.require(:plat).permit(:title, :description, :link, :price,:halal, :image, :category, :available, :person)
  end

  def set_plat
      @plat = Plat.find(params[:id])
  end
end
