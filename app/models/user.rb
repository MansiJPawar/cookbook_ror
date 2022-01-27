class User < ApplicationRecord
    #destroy data with user
   has_many :tweets, dependent: :destroy
end
