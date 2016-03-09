require 'rails_helper'

RSpec.describe Point, type: :model do
  
  it 'has a valid factory' do
    expect(build(:point)).to be_valid
  end

end
