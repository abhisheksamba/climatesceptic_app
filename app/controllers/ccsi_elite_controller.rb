class CcsiEliteController < ApplicationController
  def index
    @elite_cues = EliteCue.all
  end

  def import
    EliteCue.import(params[:file])
    redirect_to root_url, notice: "Data imported."
  end
end
