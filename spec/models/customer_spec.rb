require 'rails_helper'

RSpec.describe Customer, type: :model do
  
  it 'has a valid factory' do
    expect(build(:customer)).to be_valid
  end

  it 'is invalid without a first name' do
    expect(build(:customer, first_name: nil)).to_not be_valid
  end

  it 'is invalid without a last name' do
    expect(build(:customer, last_name: nil)).to_not be_valid
  end

  it 'is invalid without a phone number' do
    expect(build(:customer, phone: nil)).to_not be_valid
  end

  it 'is invalid without a email' do
    expect(build(:customer, email: nil)).to_not be_valid
  end

  it 'is invalid without a zip code' do
    expect(build(:customer, zip_code: nil)).to_not be_valid
  end

  it 'is invalid without a unique phone number' do
    create(:customer, phone: "1234567899")

    expect(build(:customer, phone: "1234567899")).to_not be_valid
  end

  it 'is invalid without a unique email' do
    create(:customer, email: "abc@efg.com")
    
    expect(build(:customer, email: "abc@efg.com")).to_not be_valid
  end

end
