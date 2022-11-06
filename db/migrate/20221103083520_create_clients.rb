class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :email
      t.string :name
      t.string :street
      t.string :zip

      t.timestamps
    end
  end
end
