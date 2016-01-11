class Statement < ActiveRecord::Base
  mount_uploader :name, StatementUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the owner's name is present.
end
