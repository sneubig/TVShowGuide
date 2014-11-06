class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :update, :destroy]

  def index
    render json: Show.all, status: 200
  end

  def show
    render json: @show.to_json, status: 200
  end

  def create
    @show = Show.new( params )
    render json: @show.to_json, status: 200 if @show.save
  end

  def update
    render json: @show.to_json, status: 200 if @show.update( show_params )
  end

  def destroy
    render json: @show.to_json if @show.destroy
  end

  private

  def set_show
    @show = Show.find(params[:id])
  end

  def show_params
    params.require(:show).permit(:name,:description,:day,:time, :channel)
  end
end