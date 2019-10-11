class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :phone_number
      t.string :email
      t.string :job_title
      t.string :property
      t.datetime :time_to_call
      t.timestamps
    end
  end
end
