class RemoveNullFromClient < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:pdfs, :client_id, :null => true)
  end
end
