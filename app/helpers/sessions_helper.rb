module SessionsHelper
    def log_in(account)
        session[:account_id] = account.id
    end
    
    def current_account
        if @current_account.nil?
            @current_account = Account.find_by(id: session[:account_id])
        else
            @current_account
        end
    end
    def logged_in?
        !current_account.nil?
    end
    
    def log_out
        session.delete(:account_id)
        @current_account = nil
    end
    
    def current_account?(account)
        account == current_account
    end
end
