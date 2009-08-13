require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe 'initializing' do

  it 'should initialize from array' do
    pcount = PomodoroCountByUser.new([99, 'john'])
    pcount.name.should == 'john'
    pcount.count.should == 99
  end

  describe 'is comparable' do

    before(:each) do
      @pomo1 = PomodoroCountByUser.new([99, 'john'])
      @pomo2 = PomodoroCountByUser.new([39, 'sissi'])
      @pomo3 = PomodoroCountByUser.new([39, 'jack'])
    end

    it 'should be less than' do
      (@pomo2 < @pomo1).should be_true  
    end

    it 'should be the same' do
      (@pomo2 == @pomo3).should be_true
    end

    it 'returns the max' do
      [@pomo1, @pomo2, @pomo3].max.should == @pomo1
    end

    it 'returns the min' do
      [@pomo1, @pomo2, @pomo3].min.should == @pomo3
    end

  end

  describe 'retrieving data' do

    before(:each) do
      Pomodoro.should_receive(:count).and_return({'hey' => 100, 'hay' => 350, 'huy' => 850, 'hoy' => 1022})
    end

    it 'retrieves the hash from the database' do
      PomodoroCountByUser.find_all.size.should == 4
    end

    it 'reverses order descending' do
      PomodoroCountByUser.find_all[0].name.should == "hoy"  
    end

    it 'normalizes data to a given range' do
      all = PomodoroCountByUser.find_all_normalized_to(100)
      all[0].keys[0].should == 100
      all[3].keys[0].should == 9
    end

  end

end
