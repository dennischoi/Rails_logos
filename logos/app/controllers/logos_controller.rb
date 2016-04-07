class LogosController < ApplicationController
  def index
    @logos = Logo.all
  end

  def show
    @logo = Logo.find(params[:id])
  end

  def new
    @logo = Logo.new
  end

  def create
    # render :text => "Saving a Logo. URL: #{params[:url]}, Team: #{params[:team]}, Conference: #{params[:conference]}"
    @logo = Logo.new(logo_params)
    if @logo.save
      redirect_to logos_url
    else
      render :new
    end
  end

  private
  def logo_params
    params.require(:logo).permit(:team, :conference, :url)
  end

end
