Sham.define do
  
  short_paragraph { Faker::Lorem.paragraphs(1)[0] }
  medium_paragraph { Faker::Lorem.paragraphs(3).join("\n\n") }
  long_paragraph { Faker::Lorem.paragraphs(5).join("\n\n") }
  
end
