class AddStatementFileToStatements < ActiveRecord::Migration
  def change
    add_column :statements, :statement_file, :string
  end
end
