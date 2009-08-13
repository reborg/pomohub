require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PomodorosController do

  before(:each) do
    @user = stub_model(User, :id => 99)
    session[:user_id] = 99
    User.stub!(:find_by_id).with(99).and_return(@user)
  end

  it 'assigns the user collection' do
    PomodoroCountByUser.stub!(:find_all_normalized_to).and_return(common_pomodoro_count_list)
    get :index
    assigns[:pomodoro_count_by_user_list].size.should == 3
  end

end

