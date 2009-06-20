require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PomodorosController do

  before(:each) do
    @user = stub_model(User, :id => 99)
    session[:user_id] = 99
    User.stub!(:find_by_id).with(99).and_return(@user)
  end

  it 'assigns the user collection' do
    User.stub!(:all).and_return([stub_model(User)]*3)
    get :index
    assigns[:users].size.should == 3
  end

end
