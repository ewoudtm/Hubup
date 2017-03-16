# encoding: utf-8

class PdfUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
