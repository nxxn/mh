Image.attachment_definitions[:attachment][:storage] = :s3
Image.attachment_definitions[:attachment][:s3_credentials] = {
  :access_key_id => 'AKIAIBIBXKBQRTDU7MOQ',
  :secret_access_key => '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'
}
Image.attachment_definitions[:attachment][:bucket] = 'musthave'
Image.attachment_definitions[:attachment][:path] = "products/:id/:style.:extension"
Image.attachment_definitions[:attachment][:s3_headers] = {'Cache-Control' => 'max-age=31557600'}
Image.attachment_definitions[:attachment].delete :url
Image.attachment_definitions[:attachment][:default_style] = :product
