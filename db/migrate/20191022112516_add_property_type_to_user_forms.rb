class AddPropertyTypeToUserForms < ActiveRecord::Migration[6.0]
  def change
    add_column :user_forms, :property_type, :string
  end
end
