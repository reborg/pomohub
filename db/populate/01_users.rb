Dir.glob(File.join(File.dirname(__FILE__), 'definitions/*.rb')).each {|f| require f}
Dir.glob(File.join(File.dirname(__FILE__), 'blueprints/*.rb')).each {|f| require f}

@test_user = User.make(:test)
@normal_users = []
5.times { @normal_users << User.make }
