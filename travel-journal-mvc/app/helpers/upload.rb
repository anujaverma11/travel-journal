require 'aws/s3'

helpers do
  def upload(filename, file)

    bucket = 'traveljournal1'
    AWS::S3::DEFAULT_HOST.replace "s3-us-west-1.amazonaws.com"
    AWS::S3::Base.establish_connection!(
       :access_key_id     => '',
       :secret_access_key => ''

      # :access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
      # :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    )

    buckets = AWS::S3::Service.buckets

    AWS::S3::S3Object.store(
      filename,
      open(file.path),
      bucket
    )
    return filename


  end
end

# http://www.millwoodonline.co.uk/blog/upload-to-amazon-s3-with-sinatra