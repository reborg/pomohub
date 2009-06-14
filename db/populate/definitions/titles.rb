Sham.define do
  
  short_title { Faker::Lorem.words(3).each {|word| word.capitalize!}.join(' ') }
  medium_title { Faker::Lorem.words(5).each {|word| word.capitalize!}.join(' ') }
  long_title { Faker::Lorem.words(10).each {|word| word.capitalize!}.join(' ') }

end