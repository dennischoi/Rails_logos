class LogosController < ApplicationController
  def index
    @logos = Logo.all
  end

  def show
    @logo = Logo.find(params[:id])
  end

  def new
  end

  def create
    render :text => "Saving a Logo. URL: #{params[:url]}, Team: #{params[:team]}, Conference: #{params[:conference]}"
  end


end
