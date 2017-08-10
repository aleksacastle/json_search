class SearchesController < ApplicationController
  def index
    respond_to do |format|
      format.html {}
      format.json { render json: 'data.json' }
    end
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:json)
  end
end
