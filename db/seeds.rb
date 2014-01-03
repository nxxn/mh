<<<<<<< HEAD
# Loads seed data out of default dir
Rake::Task["db:load_dir"].invoke( "default" )
puts "Default data has been loaded"        

        Rake::Task["db:load_dir"].invoke( "default" )
        puts "Default data has been loaded"
=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
>>>>>>> 67b20d427936bdd9f222949c7ced240486b1a526
