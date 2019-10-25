class UserForm < ApplicationRecord  
    belongs_to :web_form
    #validates :user_id, presence: true
    validates :web_form_id, presence: true
    validates :username, presence: true
    validates :phone_number, presence: true
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 3, maximum: 300}

    
end