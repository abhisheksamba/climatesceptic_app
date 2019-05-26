class ChartsController < ApplicationController
    def interact_chart
        render json: EliteCue.group(:Date).maximum(:CCSI)
    end
    
    def 
        render json: User.group(:id).maximum(:prediction)
    end
end


