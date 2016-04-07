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

  def edit
    @logo = Logo.find(params[:id])
  end

  def update
    @logo = Logo.find(params[:id])

    if @logo.update_attributes(logo_params)
      redirect_to "/logos/#{@logo.id}"
    else render :edit
    end
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
