class CreateUserForm < ActiveRecord::Migration[6.0]
  def change
    create_table :user_forms do |t|
      t.references :web_form,index: true,foreign_key: true
      t.string :username
=     t.string :email
      t.string :title
      t.string :description
      
      t.timestamps
    end
  end
end
