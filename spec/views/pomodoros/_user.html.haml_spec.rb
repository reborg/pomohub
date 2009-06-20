require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "user partial for statistics in main page" do
 
  before(:each) do
    @pomodoros = [stub_model(Pomodoro, :description => "@done @that it was so easy")] * 10
    @user = stub_model(User, :login => "Toshiro", :email => "toshiro@zoomla.com", :pomodoros => @pomodoros)
    render :partial => "pomodoros/user.html.haml", :locals => {:user => @user}
  end

  it 'shows the count of pomodoros for the user' do
    response.should have_tag('div#user', /10/)
  end
  
end
