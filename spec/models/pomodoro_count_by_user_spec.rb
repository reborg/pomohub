require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe 'initializing' do

  it 'should initialize from array' do
    pcount = PomodoroCountByUser.new([99, 'john'])
    pcount.name.should == 'john'
    pcount.count.should == 99
  end

  describe 'retrieving data' do

    before(:each) do
      Pomodoro.should_receive(:count).and_return({'hey' => 1, 'hoy' => 3})
    end

    it 'retrieves the hash from the database' do
      PomodoroCountByUser.find_all.size.should == 2
    end

    it 'reverses order descending' do
      PomodoroCountByUser.find_all[0].name.should == "hoy"  
    end
  end

end
