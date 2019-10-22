class AddTimeToCallToUserForms < ActiveRecord::Migration[6.0]
  def change
    add_column :user_forms, :time_to_call, :datetime

  end
end
