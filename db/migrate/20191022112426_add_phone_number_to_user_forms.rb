class AddPhoneNumberToUserForms < ActiveRecord::Migration[6.0]
  def change
    add_column :user_forms, :phone_number, :string

  end
end
