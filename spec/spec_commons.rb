module SpecCommons

  def common_pomodoro_count_list
    [{100 => PomodoroCountByUser.new([50, 'Carmelo'])},
      {50 => PomodoroCountByUser.new([25, 'Donatella'])},
      {20 => PomodoroCountByUser.new([10, 'Norberto'])}]
  end

end
