class ListsController < ApplicationController

  def index
  end

  def new
  end

  private

  def list_params
    params.require(:list).permit(:nickname).merge(user_id: current_user.id)
  end

end
