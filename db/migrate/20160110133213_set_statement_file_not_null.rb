class SetStatementFileNotNull < ActiveRecord::Migration
  def change
    change_column :statements, :statement_file, :string, :null => false
  end
end
