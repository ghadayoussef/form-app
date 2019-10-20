class AddSlugToWebForms < ActiveRecord::Migration[6.0]
  def change
    add_column :web_forms, :slug, :string
  end
end
