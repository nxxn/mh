# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spree_api"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Bigg"]
  s.date = "2012-08-30"
  s.description = "Spree's API"
  s.email = ["ryan@spreecommerce.com"]
  s.homepage = ""
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Spree's API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["= 1.2.0"])
      s.add_runtime_dependency(%q<rabl>, ["= 0.6.5"])
      s.add_development_dependency(%q<rspec-rails>, ["= 2.9.0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, ["= 1.2.0"])
      s.add_dependency(%q<rabl>, ["= 0.6.5"])
      s.add_dependency(%q<rspec-rails>, ["= 2.9.0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, ["= 1.2.0"])
    s.add_dependency(%q<rabl>, ["= 0.6.5"])
    s.add_dependency(%q<rspec-rails>, ["= 2.9.0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
  end
end
