class Medium < ApplicationRecord
    require 'csv'
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            
            media_hash = row.to_hash
            meds = Medium.where(id: media_hash["id"])
            
            if meds.count == 1
                meds.first.update_attributes(media_hash)
            else
                Medium.create!(media_hash)
            end
        end
    end

end
