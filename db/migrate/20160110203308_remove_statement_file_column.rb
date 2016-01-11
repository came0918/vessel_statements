class RemoveStatementFileColumn < ActiveRecord::Migration
  def change
    remove_column :statements, :statement_file
    change_column :statements, :name, :string, :null => false
  end
end
