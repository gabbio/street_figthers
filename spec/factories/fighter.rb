FactoryBot.define do
  factory :fighter do
    name { "Sub Zero" }
    energy { 95 }
    strength { 7 }
    avatar { "/path/to/file" }
    stamina { 50 }
  end
end