class RenameAttachmentToStatement < ActiveRecord::Migration
  def change
    rename_column :statements, :attachment, :statement
  end
end
