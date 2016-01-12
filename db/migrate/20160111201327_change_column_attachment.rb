class ChangeColumnAttachment < ActiveRecord::Migration
  def change
    rename_column :statements, :statement, :attachment
  end
end
