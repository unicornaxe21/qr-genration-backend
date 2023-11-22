class ChangeClienrIdDefaultValue < ActiveRecord::Migration[6.1]
  def change
    change_column_default :pdfs, :client_id, 58
  end
end
