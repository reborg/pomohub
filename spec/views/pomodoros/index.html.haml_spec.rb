require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pomodoros/index" do
 
  before(:each) do
    assigns[:users] = [stub_model(User)] * 10
    render
  end

  it 'shows all users' do
    response.should have_tag('div#user', 10)  
  end
  
end
