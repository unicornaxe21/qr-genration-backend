require 'aws-sdk-s3'

Aws.config.update({
  region: 'ap-southeast-2',
  credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']),
  instance_profile_credentials_timeout: 5,
  instance_profile_credentials_retries: 5,
})

presigner = Aws::S3::Presigner.new
    url = presigner.presigned_url(:get_object, 
                    bucket: 'my-bucket-for-qr-codes',
                    key: ENV['AWS_SECRET_ACCESS_KEY'], 
                    expires_in: 7.days.to_i, 
                    ).to_s
