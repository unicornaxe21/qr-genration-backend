class RemoveAttachment < ActiveRecord::Migration[6.1]
  def change
    remove_column :pdfs, :attachment
  end
end
