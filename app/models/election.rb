class Election < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :password, presence: true
    validates :date_of_birth, presence: true
    validates :phone_number, presence: true, length: { is: 10 }
end
