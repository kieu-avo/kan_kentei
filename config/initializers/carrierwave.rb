CarrierWave.configure do |config|
  config.storage = :aws
  config.aws_bucket = 'kan-kentei-bucket'
  config.aws_acl = 'private'

  config.aws_credentials = {
    access_key_id:     Rails.application.credentials.dig(:aws, :access_key_id),
    secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
    region: 'ap-northeast-1',
  }
end