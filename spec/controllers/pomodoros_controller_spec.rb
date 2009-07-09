require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PomodorosController do

  before(:each) do
    @user = stub_model(User, :id => 99)
    session[:user_id] = 99
    User.stub!(:find_by_id).with(99).and_return(@user)
  end

  it 'assigns the user collection' do
    Pomodoro.stub!(:count).and_return(pomodoro_count_by_user)
    get :index
    assigns[:pomodoro_count_by_user_list].size.should == 11
  end

end

def pomodoro_count_by_user
  {"simonis"=>82, "hirthe"=>26, "corwin"=>89, "senger"=>74, "west"=>85, "goyette"=>19, "cremin"=>22, "test"=>30, "lesch"=>11, "kunde"=>47, "goldner"=>15}
end
