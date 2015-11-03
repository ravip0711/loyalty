require 'rails_helper'

RSpec.describe CustomersController, type: :controller do

  describe 'Post #create' do
    context 'with valid attributes' do
      it 'creates a customer' do
        post :create, customer: attributes_for(:customer)
        expect(Customer.count).to eq(1)
      end

      it 'redirects to the show action for the new customer' do
        post :create, customer: attributes_for(:customer)
        expect(response).to redirect_to Customer.first
      end
    end
  end
end
