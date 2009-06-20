require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PomodorosController do

  it 'assigns the user collection' do
    User.stub!(:all).and_return([stub_model(User)]*3)
    get :index
    assigns[:users].size.should == 3
  end

end
