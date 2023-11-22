class RemoveNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :pdfs, :client_id, true
  end
end
