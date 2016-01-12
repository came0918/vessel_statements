class Statement < ActiveRecord::Base
  has_attached_file :attachment, :path => ":rails_root/public/uploads/:class/:attachment.extension"
  do_not_validate_attachment_file_type :attachment
  #validates_attachment :attachment, presence: true, size: {in: 0..50.megabytes}, content_type: {
  #    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]}
end
