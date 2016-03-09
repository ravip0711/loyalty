require 'rails_helper'

RSpec.describe Employee, type: :model do
  
  it 'has a valid factory' do
    expect(build(:employee)).to be_valid
  end

  it 'is invalid without a username' do
    expect(build(:employee, user_name: nil)).to_not be_valid
  end

  it 'is invalid without a password' do
    expect(build(:employee, password: nil)).to_not be_valid
  end

  it 'is invalid without a password confirmation' do
    expect(build(:employee, password_confirmation: nil)).to_not be_valid
  end

  it 'is invalid without password and password confirmation matching' do
    expect(build(:employee, password_confirmation: "differentpassword")).to_not be_valid
  end

  it 'is invalid without a passcode' do
    expect(build(:employee, passcode: nil)).to_not be_valid
  end

  it 'is invalid without a unique passcode' do
    create(:employee, passcode: "9999")

    expect(build(:employee, passcode: "9999")).to_not be_valid
  end
end
