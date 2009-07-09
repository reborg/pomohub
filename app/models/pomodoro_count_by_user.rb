class PomodoroCountByUser
  attr_accessor :name, :count

  def initialize(array)
    @count = array[0]
    @name = array[1]
  end

  def self.find_all
    all = Pomodoro.count(:group => "users.login", :joins => "LEFT JOIN users on pomodoros.user_id = users.id").invert.sort.reverse
    all.inject([]) {|acc, elem| acc << PomodoroCountByUser.new(elem)}
  end
end
