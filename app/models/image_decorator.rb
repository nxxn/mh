Image.attachment_definitions[:attachment][:storage] = :s3
Image.attachment_definitions[:attachment][:s3_credentials] = {
 "#{Rails.root}/config/s3.yml"
}

Image.attachment_definitions[:attachment][:path] = "products/:id/:style.:extension"
Image.attachment_definitions[:attachment][:s3_headers] = {'Cache-Control' => 'max-age=31557600'}
Image.attachment_definitions[:attachment].delete :url
Image.attachment_definitions[:attachment][:default_style] = :original
