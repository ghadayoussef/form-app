class AddOptionsToWebForms < ActiveRecord::Migration[6.0]
  def change
    add_column :web_forms, :options, :string

  end
end
