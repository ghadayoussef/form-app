class WebForm < ApplicationRecord
    has_many :user_forms
    mount_uploader :image,ImageUploader
end
