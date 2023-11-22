class RenameColumnInPdf < ActiveRecord::Migration[6.1]
  def change
    rename_column :pdfs, :file, :attachment
  end
end
