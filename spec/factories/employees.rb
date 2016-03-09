FactoryGirl.define do
  factory :employee do
    user_name "EmployeeBot"
    password "botpassword"
    password_confirmation "botpassword"
    passcode "9090"
  end
end
