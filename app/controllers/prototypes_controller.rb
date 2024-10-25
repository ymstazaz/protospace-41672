class PrototypesController < ApplicationController
  def index
  end
  # →消すならルーティングも修正が必要！

  def new
    @prototype=Prototype.new
  end

  def create
  end

  private
  def Prototype_params
    params.permit(:image, :title, :catch_copy, :concept).marge(user_id: current_user.id)
  end
end
