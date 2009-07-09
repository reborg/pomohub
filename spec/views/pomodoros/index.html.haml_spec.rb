require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pomodoros/index" do
 
  before(:each) do
    assigns[:pomodoro_count_by_user_list] = [[89, "corwin"], [85, "west"], [82, "simonis"], [74, "senger"], [47, "kunde"], [30, "test"], [26, "hirthe"], [22, "cremin"], [19, "goyette"], [15, "goldner"], [11, "lesch"]]
    render
  end

  it 'shows all users' do
    response.should have_tag('div#user', 11)
  end
  
end
