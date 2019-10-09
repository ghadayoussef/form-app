class CreateWebForms < ActiveRecord::Migration[6.0]
  def change
    create_table :web_forms do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
