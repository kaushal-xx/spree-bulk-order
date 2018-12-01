ENV['S3_ACCESS_KEY'] = 'AKIAJNPDUACOFKBMKLNQ'
ENV['S3_SECRET'] = '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'
ENV['S3_REGION'] = ''
ENV['S3_BUCKET_NAME'] = 'spree-bulk-order'
ENV['S3_HOSTNAME'] ='spree-bulk-order.herokuapp.com'
AWS.config(access_key_id: ENV['S3_ACCESS_KEY'], secret_access_key: ENV['S3_SECRET'], region: ENV['S3_REGION'])