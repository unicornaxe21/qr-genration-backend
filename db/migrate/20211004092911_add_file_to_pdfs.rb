class AddFileToPdfs < ActiveRecord::Migration[6.1]
  def change
    add_column :pdfs, :file, :string
  end
end
