class RemoveNullFromClientId < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:pdfs, :client_id, nil)
  end
end
