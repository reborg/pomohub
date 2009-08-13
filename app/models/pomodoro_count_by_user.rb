class PomodoroCountByUser
  include Comparable
  attr_accessor :name, :count

  def initialize(array)
    @count = array[0]
    @name = array[1]
  end

  def <=>(other)
    count <=> other.count
  end

  def self.find_all
    all = Pomodoro.count(:group => "users.login", :joins => "LEFT JOIN users on pomodoros.user_id = users.id").invert.sort.reverse
    all.map {|elem| PomodoroCountByUser.new(elem)}
  end

  def self.find_all_normalized_to(limit)
    all = self.find_all
    max = all.max.count
    all.map { |e| {(e.count * limit / max) => e} }
  end
end
