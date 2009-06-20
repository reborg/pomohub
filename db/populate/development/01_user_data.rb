require File.join(File.dirname(__FILE__), "..", "..", "populate.rb")

@test_user = User.make(:test)
@normal_users = []
10.times { @normal_users << User.make }

