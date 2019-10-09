json.extract! web_form, :id, :title, :description, :image, :created_at, :updated_at
json.url web_form_url(web_form, format: :json)
