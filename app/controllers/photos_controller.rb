class PhotosController < ApplicationController
  def index
    @s3 = Aws::S3::Resource.new
    @acbw_bucket = @s3.bucket('<%= ENV["AWS_S3_BUCKET"] %>')
    @lists = []
    @acbw_bucket.objects.limit(50).each do |obj|
      @lists << obj
    end
    render plain: @lists.inspect
  end
end
