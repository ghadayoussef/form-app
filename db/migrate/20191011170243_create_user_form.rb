class CreateUserForm < ActiveRecord::Migration[6.0]
  def change
    create_table :user_forms do |t|
      t.belongs_to :user
      t.belongs_to :web_form
      t.string :username
      #t.string :phone_number
      t.string :email
      t.string :title
      t.string :description
      
      t.timestamps
    end
  end
end
