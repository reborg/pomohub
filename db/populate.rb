Dir.glob(File.join(File.dirname(__FILE__), 'populate/definitions/*.rb')).each {|f| require f}
Dir.glob(File.join(File.dirname(__FILE__), 'populate/blueprints/*.rb')).each {|f| require f}
