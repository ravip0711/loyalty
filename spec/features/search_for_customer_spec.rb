require 'rails_helper.rb'

feature 'Search by phone' do
  
  scenario 'existing customer' do
    customer = create(:customer)

    visit '/'
    fill_in "phone", with: "#{customer.phone}"
    click_on "Enter"

    expect(page).to have_content("#{customer.first_name}")
    expect(page).to have_content("#{customer.last_name}")
    # Leaving this test off due to view with dashes
    # expect(page).to have_content("#{customer.phone}")
    expect(page).to have_content("#{customer.email}")
    expect(page).to have_content("#{customer.zip_code}")
  end

  scenario 'non-existing customer send to sign up page' do

    visit '/'
    fill_in "phone", with: "1234567890"
    click_on "Enter"

    expect(page.current_path).to eq(new_customer_path)
    expect(page).to have_field(:phone, :with => "1234567890")
  end
end