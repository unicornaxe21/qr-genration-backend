class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.boolean :is_owner, default: false

      t.timestamps
    end
  end
end
