class Recession < ApplicationRecord
    has_many :users
require 'csv'
    
 #   def self.import(file)
 #       CSV.foreach(file.path, headers: true) do |row|
            
 #            recession_hash = row.to_hash
#            recessions = Recession.where(id: recession_hash["id"])
            
#            if recessions.count == 1
#                recessions.first.update_attributes(recession_hash)
#            else
#                Recession.create!(recession_hash)
#            end
#        end
#    end

end
