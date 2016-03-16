require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end


  describe "POST #create" do
    context "with valid attributes" do

      it "creates a customer" do
        create(:customer)

        expect(Customer.count).to eq(1)
      end

#need to complete this test
      it "redirects to the customer path if customer is existing" do
        skip
        customer = create(:customer)

        expect(response).to redirect_to(customer)
      end
    end

    context "with invalid attributes" do
      it "does not create the customer" do
        skip
        post :create, customer: attributes_for(:customer, phone: nil)

        expect(Customer.count).to eq(0)
      end

      it "re-renders the #new view for a blank phone number" do
        skip
        post :create, customer: attributes_for(:customer, phone: nil)

        expect(response).to render_template(:new)
      end
    end
  end
end
