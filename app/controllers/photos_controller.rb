class PhotosController < ApplicationController
  def index
    if params[:path]
      @s3 = Aws::S3::Resource.new
      @acbw_bucket = @s3.bucket(ENV['AWS_S3_BUCKET'])

      @lists = @acbw_bucket.objects(delimiter: "/", prefix: params[:path]).
      collect(&:key)
    else
      @lists = []
    end
  end
end
