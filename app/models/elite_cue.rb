class EliteCue < ApplicationRecord
    require 'csv'
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            
            elite_hash = row.to_hash
            cue = EliteCue.where(id: elite_hash["id"])
            
            if cue.count == 1
                cue.first.update_attributes(elite_hash)
            else
                EliteCue.create!(elite_hash)
            end
        end
    end
end


