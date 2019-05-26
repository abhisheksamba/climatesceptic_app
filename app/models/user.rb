class User < ApplicationRecord
    belongs_to :recession 
    belongs_to :account
 
   validates :prediction, presence: true, numericality: { only_integer: true, greater_than: 5.0, less_than: 50.0} 
   validates :recession_id, presence: true, numericality: {only_integer: true, greater_than: 0, less_than: 65}

end
