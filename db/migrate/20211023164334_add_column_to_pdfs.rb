class AddColumnToPdfs < ActiveRecord::Migration[6.1]
  def change
    add_column :pdfs, :count, :integer, default: 0
  end
end
