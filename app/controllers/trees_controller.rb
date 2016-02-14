class TreesController < ApplicationController
  def show
    @tree = Tree.new id: params[:id]
  end
end
