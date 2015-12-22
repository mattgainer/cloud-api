class Api::V1::CloudsController < ApplicationController

  def index
    @clouds = Cloud.all
  end

  def show
    @cloud = Cloud.find(params[:id])
  end

  def create
    @cloud = Cloud.create(name: params[:name], min_altitude: params[:min_altitude], max_altitude: params[:max_altitude], units: params[:units], composition: params[:composition], precipitation: params[:precipitation])
    render :show
  end

  def update
    @cloud = Cloud.find(params[:id])
    @cloud.update(name: params[:name], min_altitude: params[:min_altitude], max_altitude: params[:max_altitude], units: params[:units], composition: params[:composition], precipitation: params[:precipitation])
    render :show
  end

  def destroy
    Cloud.find(params[:id]).destroy
    @clouds = Cloud.all
    render :index
  end

end
