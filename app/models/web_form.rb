class WebForm < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    def should_generate_new_friendly_id?
        title_changed? || super
    end
    
    has_many :user_forms
    mount_uploader :image,ImageUploader
end
