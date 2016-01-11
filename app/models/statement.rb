class Statement < ActiveRecord::Base
  mount_uploader :statement, StatementUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the name is present.
end
