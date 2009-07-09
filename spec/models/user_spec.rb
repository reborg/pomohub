require File.dirname(__FILE__) + '/../spec_helper'

describe 'user named scopes' do
  fixtures :users

  it 'returns only active users' do
    User.activated.size.should == 2  
  end

end
