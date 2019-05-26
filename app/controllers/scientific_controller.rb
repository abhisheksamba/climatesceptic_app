class ScientificController < ApplicationController
  def index
    @sciences = Science.all
  end

  def import
    Science.import(params[:file])
    redirect_to root_url, notice: "Data imported."
  end
end
