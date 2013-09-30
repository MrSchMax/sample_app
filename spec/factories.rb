FactoryGirl.define do
  factory :user do
  	name     "Michael Hartl"
  	email    "michel@example.com"
  	password "foobar"
  	password_confirmation "foobar"
  end
end