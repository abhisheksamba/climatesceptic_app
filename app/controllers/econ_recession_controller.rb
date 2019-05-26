class EconRecessionController < ApplicationController
  def index
    @recessions = Recession.all
  end

  def import
    Recession.import(params[:file])
    redirect_to root_url, notice: "Data imported."
  end
end
