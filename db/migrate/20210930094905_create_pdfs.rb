class CreatePdfs < ActiveRecord::Migration[6.1]
  def change
    create_table :pdfs do |t|
      t.string :address
      t.string :qr_code_address
      t.timestamps
    end
  end
end
