class AdvocacyController < ApplicationController
  def index
    @media = Medium.all
  end

  def import
    Medium.import(params[:file])
    redirect_to root_url, notice: "Data imported."
  end
end
