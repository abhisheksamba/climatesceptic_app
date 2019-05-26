class SessionsController < ApplicationController
  def new
  end
  
  def create
    account = Account.find_by(email: params[:session][:email].downcase)
    if account && account.authenticate(params[:session][:password])
      log_in account
      redirect_to account
    else
      flash[:danger] = "email/password combination is not valid"
      render 'new'
    end
  end 
  def destroy
    log_out
    redirect_to root_url
  end
end
