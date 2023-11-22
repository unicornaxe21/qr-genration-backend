class AddClientToPdfs < ActiveRecord::Migration[6.1]
  def change
    add_reference :pdfs, :client, null: false, foreign_key: true, default: 1
  end
end
