class AddAttachmentToStatement < ActiveRecord::Migration
  def change
    add_column :statements, :attachment, :string
  end
end
