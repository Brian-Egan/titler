IMGKit.configure do |config|

# Options from gem wiki: https://github.com/csquared/IMGKit


  config.wkhtmltoimage = Rails.root.join('bin', 'wkhtmltoimage-amd64').to_s if ENV['RACK_ENV'] == 'production'


# May be set to one of IMGKit::KNOWN_FORMATS = [:jpg, :jpeg, :png, :tiff, :tif]
  config.default_format = :jpg

#May be changed from its default (imgkit-):

  config.meta_tag_prefix = 'imgkit-option'


# Any flag accepted by wkhtmltoimage may be set thus:
# config.default_options = {
#     :quality => 60
#   }


# For a flag which takes no parameters, use true for the value:
	# 'no-images' => true

# For flags with multiple parameters, use an array:

    # :cookie => ['my_session', '123BADBEEF456']



end