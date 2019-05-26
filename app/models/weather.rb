class Weather < ApplicationRecord
    require 'csv'
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            
            weather_hash = row.to_hash
            weathers = Weather.where(id: weather_hash["id"])
            
            if weathers.count == 1
                weathers.first.update_attributes(weather_hash)
            else
                Weather.create!(weather_hash)
            end
        end
    end

end
