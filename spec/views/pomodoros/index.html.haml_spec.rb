require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pomodoros/index" do
 
  before(:each) do
    assigns[:pomodoro_count_by_user_list] = common_pomodoro_count_list
    render
  end

  it 'shows all users pomodoro counts' do
    response.should have_tag('div.graph', 3)
  end
  
end
