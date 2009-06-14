Sham.define do
  
  first_name        { Faker::Name.first_name }
  last_name         { Faker::Name.last_name }
  single_word_name  { Faker::Company.name[0..6] }
  
end