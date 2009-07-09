require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "user partial for statistics in main page" do
 
  before(:each) do
    @user = PomodoroCountByUser.new([99, 'qwer'])
    render :partial => "pomodoros/user.html.haml", :locals => {:user => @user}
  end

  it 'shows the count of pomodoros for the user' do
    response.should have_tag('div#user', /99/)
  end
  
end
