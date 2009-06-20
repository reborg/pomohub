Sham.define do
  
  one_tag { "@" + Faker::Lorem.words(1)[0] }
  a_few_tags { Faker::Lorem.words([1,2,3].choice).map {|e| "@#{e}"}.join(' ') }
  
end
