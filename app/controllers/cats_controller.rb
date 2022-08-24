class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]

  def index
    @cats = policy_scope(Cat)
  end

  def show; end

  def new
    @cat = Cat.new
    authorize @cat
  end

  def create
    @cat = Cat.new(cat_params)
    authorize @cat
    @cat.save
    @cat.user = current_user
    if @cat.save
      redirect_to cat_path(@cat)
    else
      render :new
    end
  end

  def edit; end

  def update
    @cat.update(cat_params)
    redirect_to cat_path(@cat)
  end

  def destroy
    @cat.destroy
    redirect_to cats_path
  end

  # def my_cats
  #   @cats = Cat.where(user: current_user)
  # end

  private

  def set_cat
    @cat = Cat.find(params[:id])
    authorize @cat
  end

  def cat_params
    params.require(:cat).permit(:name, :location, :age, :description, :house_cat, :pay, :photo)
  end
end
