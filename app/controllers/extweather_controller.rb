class ExtweatherController < ApplicationController
  def index
    @weathers = Weather.all
  end

  def import
    Weather.import(params[:file])
    redirect_to root_url, notice: "Data imported."
  end
end
