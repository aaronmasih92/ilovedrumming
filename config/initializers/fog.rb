CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     Rails.application.credentials.production[:aws][:access_key_id],                        # required
      aws_secret_access_key: Rails.application.credentials.production[:aws][:secret_access_key],                        # required
      region:                'us-east-2'                  # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = 'aaronmasihtest'                                   # required
    config.fog_public     = true                                                 # optional, defaults to true
    config.fog_attributes = { 'Cache-Control'=>'max-age=315576000' } # optional, defaults to {}
  end