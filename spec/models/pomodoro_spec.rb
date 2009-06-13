require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Pomodoro do
  before(:each) do
    @valid_attributes = {
      :description => "value for description",
      :user_id => 1,
      :timestamp => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Pomodoro.create!(@valid_attributes)
  end
end
