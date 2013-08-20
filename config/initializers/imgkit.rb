IMGKit.configure do |config|
  # config.wkhtmltoimage = '.wkhtmltoimage'
	# config.wkhtmltoimage = Rails.root.join('bin', 'libwkhtmltox.0.10.0.dylib').to_s if ENV['RACK_ENV'] == 'development'

  config.wkhtmltoimage = Rails.root.join('bin', 'wkhtmltoimage-amd64').to_s if ENV['RACK_ENV'] == 'production'
  config.default_format = :png
end