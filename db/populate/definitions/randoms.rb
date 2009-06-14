Sham.define do
  
  a_random_from_1_to_4(:unique => false) do
    range = (1..4)
    rand((range.last+1) - range.first) + range.first
  end
  
  a_random_from_zero_to_3(:unique => false) do
    range = (0..3)
    rand((range.last+1) - range.first) + range.first
  end
  
  a_random_from_1_to_5(:unique => false) do
    range = (1..5)
    rand((range.last+1) - range.first) + range.first
  end

  a_random_from_0_to_9(:unique => false) do
    range = (0..9)
    rand((range.last+1) - range.first) + range.first
  end
  
  a_random_from_1_to_10(:unique => false) do
    range = (1..10)
    rand((range.last+1) - range.first) + range.first
  end
  
  zero_or_one(:unique => false) do
    (rand*10).to_i % 2
  end
  
  true_or_false(:unique => false) do
    [true, false][Sham.zero_or_one]
  end
  
end
