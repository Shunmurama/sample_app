class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to list_path(list.id)
  end
  
  def index
    @lists = List.all
  end 

  def show
    @list = List.find(params[:id])
  end

  def edit
  end
  
  private 
  def list_params
    #データベースに保存する内容を決める
    params.require(:list).permit(:title, :body)
  end 
end
