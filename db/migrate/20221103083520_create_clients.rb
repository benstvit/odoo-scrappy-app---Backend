class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.string :street
      t.string :zip

      t.timestamps
    end
  end
end
