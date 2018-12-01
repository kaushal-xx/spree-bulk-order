# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # when stock level reaches the "low stock threshold", admins will be notified. Default is 1
  # config.admin_interface_logo = 'logo.png'

  # attachment_config= {

  #   s3_credentials: {
  #     access_key_id: ENV['S3_ACCESS_KEY'],
  #     secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  #     bucket: ENV['S3_BUCKET_NAME']
  #   },

  #   storage:     :s3,
  #   s3_headers:  {"Cache-Control"=>"max-age=31557600"},
  #   s3_protocol: "https",
  #   bucket:     ENV['S3_BUCKET_NAME'],
  #   s3_host_name: ENV['S3_HOSTNAME'], #your region
  #   url:          ENV['S3_HOSTNAME'],

  #   styles:      {
  #                 mini:   "60x76#",
  #                 small:  "270x340#", #totally depends how you are going to keep the styles
  #                 product:"670x844#",
  #                 large:  "700x881>"
  #               },

  #   path:        "/spree/:class/:id/:style/:basename.:extension",
  #   default_url: "/spree/products/:id/:style/:basename.:extension",
  #   default_style: "product",
  # }
  # attachment_config.each do |key,value|
  #   Spree::Image.attachment_definitions[:attachment][key.to_sym]=value
  # end
end
# Spree::Image.attachment_definitions[:attachment][:url] = 'http://test.sandandsky.com/system/:class/:attachment/:id_partition/:style/'
# Spree::Image.attachment_definitions[:attachment][:path] = '/home/rails/sand-and-sky/shared/system/:class/:attachment/:id_partition/:style/'
# Spree::Config[:attachment_url] = 'http://test.sandandsky.com/system/:class/:attachment/:id_partition/:style/:hash.:extension'
Spree.user_class = 'Spree::User'
