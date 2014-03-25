FactoryGirl.define do 
	factory :user do |f|
		f.sequence(:email) { |n| "test#{n}@test.com"}
		f.password "password"
		f.password_confirmation {|u| u.password}
		f.sequence(:name) {|n| "Test#{n} Account"}
	end
	factory :post do |f|
		f.sequence(:title){ |n| "testing#{n}" }
		f.content "Testing"
	end

end