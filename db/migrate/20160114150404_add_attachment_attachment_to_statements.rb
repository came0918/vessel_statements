class AddAttachmentAttachmentToStatements < ActiveRecord::Migration
  def self.up
    change_table :statements do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :statements, :attachment
  end
end
