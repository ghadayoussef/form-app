class AddJobTitleToUserForms < ActiveRecord::Migration[6.0]
  def change
    add_column :user_forms, :job_title, :string

  end
end
