class RemoveColumnFromPdfs < ActiveRecord::Migration[6.1]
  def change
    remove_reference :pdfs, :client, index: true, foreign_key: true
  end
end
