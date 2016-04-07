class LogosController < ApplicationController
  def index
    @logos = Logo.all
  end

end
