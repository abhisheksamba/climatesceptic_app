class HomeController < ApplicationController
  def lib
   @recessions = Recession.all
   @media = Medium.all
   @elite_cues = EliteCue.all
   @weathers = Weather.all
   @sciences = Science.all
  end

  def CCSI
  end

  def interact
      @users = User.all
  end
  
  def ranking
       @users = User.all
       @rank = {} 
       @recessions = Recession.all
       @accounts = Account.all
       @users.each do|u|
            @rank[u.id] = (@recessions.find(u.recession_id).CCSI - u.prediction).abs
       end 
       #@rank = @rank.sort_by { |k, v| v }
    #   min = @rank.first
    #   @sorted = {}
    #   min_k = @rank.first.key
    #   @rank.each do |k,v|
    #       if v < min.v
    #           min_k = k
    #           min.v = v
    #       end
    #   end
    #   @sorted[min_k] = min.v
               
  end
 
  def intro
  end
end
