module PagesHelper
	
def seo_url(taxon, product = nil)
    return '/t/' + taxon.permalink if product.nil?
    warn "DEPRECATION: the /t/taxon-permalink/p/product-permalink urls are "+
      "not used anymore. Use product_url instead. (called from #{caller[0]})"
    return product_url(product)
  end
end
