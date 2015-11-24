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
        post :create, customer: attributes_for(:customer)
        expect(Customer.count).to eq(1)
      end

      it "redirects to the #show action with a blank form for the new customer" do
        pending("need to add test logic")
        this_should_not_get_executed
      end

      it "redirects to the #show/id path if it is an existing customer" do
        post :create, customer: attributes_for(:customer, phone: "1234")
        expect(response).to redirect_to(customer_path(assigns(:customer).id))
      end


    end

    context "with invalid attributes" do
      it "does not create the customer" do
        post :create, customer: attributes_for(:customer, phone: nil)
        expect(Customer.count).to eq(0)
      end

      it "re-renders the #new view" do
        post :create, customer: attributes_for(:customer, phone: nil)
        expect(response).to render_template(:new)
      end
    end
  end
end
