class Statement < ActiveRecord::Base
  has_attached_file :attachment,
                    default_url: 'https://s3.amazonaws.com/www.premedinc.com/statements/missing.png',
                    storage: :s3,
                    bucket: Rails.env.production? ? 'www.premedinc.com' : 'www.premedinc.com.dev'
  do_not_validate_attachment_file_type :attachment
end
