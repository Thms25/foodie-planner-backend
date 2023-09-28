Cloudinary.config do |config|
  config.cloud_name = ENV.fetch('CL_CLOUD')
  config.api_key = ENV.fetch('CL_API')
  config.api_secret = ENV.fetch('CL_SECRET')
  config.secure = true
  config.cdn_subdomain = true
end
