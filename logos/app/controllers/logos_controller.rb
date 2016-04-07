class LogosController < ApplicationController
  def index
    @logos = Logo.all
  end

  def show
    @logo = Logo.find(params[:id])
  end

end
