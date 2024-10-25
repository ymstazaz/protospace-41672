class PrototypesController < ApplicationController
  def index
  end
  # →消すならルーティングも修正が必要！

  def new
    @prototype=Prototype.new
  end

  def create
  end
end
