class ListsController < ApplicationController

  def index
  end

  def new
  end

  private

  def list_params
    params.require(:list).permit(:nickname, :image).merge(user_id: current_user.id)
  end

end
