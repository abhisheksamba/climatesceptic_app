class Science < ApplicationRecord
require 'csv'
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            
            science_hash = row.to_hash
            science1 = Science.where(id: science_hash["id"])
            
            if science1.count == 1
                science1.first.update_attributes(science_hash)
            else
                Science.create!(science_hash)
            end
        end
    end


end
