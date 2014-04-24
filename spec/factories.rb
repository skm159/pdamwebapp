FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    role      "software engineer"
    location  "Nagpur"
    password "foobar"
    password_confirmation "foobar"
  end
end