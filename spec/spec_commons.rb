module SpecCommons

  def common_pomodoro_count_list
    [PomodoroCountByUser.new([99, 'Carmelo']),
     PomodoroCountByUser.new([55, 'Donatella']),
     PomodoroCountByUser.new([33, 'Norberto'])]
  end

end
