class AccountsController < ApplicationController
  #before_action :set_account, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_account, only: [:edit, :update]
  before_action :correct_account, only: [:edit, :update]
  before_action :admin_account, only: :destroy
  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
  end
    
  def current_account?(account)
    account == current_account
  end
  # GET /accounts/1
  # GET /accounts/1.json
  def show
    @account = Account.find(params[:id]) 
    @recessions = Recession.all
  end

  # GET /accounts/new
  def new
    @account = Account.new
  end

  # GET /accounts/1/edit
  def edit
    @account = Account.find(params[:id])
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)
      if @account.save
        flash[:success] = 'Welcome, your Account was successfully created.'
        log_in @account
        redirect_to @account
        
      else
        render 'new'
      end
  
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(account_params)
        flash[:success] = "Account was successfully updated."
        redirect_to @account
    else
      render 'edit'
    end
  end
  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    Account.find(params[:id]).destroy
    flash[:sucess] = 'Account was successfully destroyed.'
    redirect_to accounts_url
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end
    
    def admin_account
      redirect_to(root_url) unless current_account.admin?
    end
    
    def account_params
      params.require(:account).permit(:name, :email, :password, :password_confirmation)
    end
    
    def logged_in_account
      unless logged_in?
      flash[:danger] = "Please log in"
      redirect_to login_url
      end
    end
  
  def correct_account
    @account = Account.find(params[:id])
    redirect_to(root_url) unless current_account?(@account)
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    
end
