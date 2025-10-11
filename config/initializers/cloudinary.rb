Cloudinary.config do |config|
  config.cloud_name = ENV['CLOUDINARY_CLOUD_NAME'] || Rails.application.credentials.dig(:cloudinary, :cloud_name) || 'mama-tech'
  config.api_key = ENV['CLOUDINARY_API_KEY'] || Rails.application.credentials.dig(:cloudinary, :api_key) || '419673418521544'
  config.api_secret = ENV['CLOUDINARY_API_SECRET'] || Rails.application.credentials.dig(:cloudinary, :api_secret) || 'q-y6WyFSCDNnXSPUblNaneI4EXc'
  config.secure = true
end
