class ListsController < ApplicationController
  before_action :set_tlist, only: [:show, :edit, :update]


  def index
    @lists = List.includes(:user)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end
  
  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :edit
    end
  end

  private

  def list_params
    params.require(:list).permit(:title, :detail, :image).merge(user_id: current_user.id)
  end

  def set_list
    @list = List.find(params[:id])
  end
end