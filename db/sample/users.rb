password =  "mms13lol"
email =  "order@musthave.lv"

attributes = {
  :password => password,
  :password_confirmation => password,
  :email => email,
  :login => email
}

load 'user.rb'

puts "Creating Admin with following attributes"
puts attributes.to_yaml

admin = User.create(attributes)
# create an admin role and and assign the admin user to that role
role = Role.find_or_create_by_name "admin"
admin.roles << role
admin.save

