# frozen_string_literal: true

require "rails_helper"

RSpec.describe TweeetsController, type: :controller do

  let!(:tweeet) do
    create :tweeet
  end

  let!(:valid_attributes) {
    { content: "tweeet" }
  }

  let!(:invalid_attributes) do
    { content: nil }
  end

  let!(:valid_session) do
    { email: "test@mail.com", password: "123123" }
  end

  describe "GET #index" do
    login_user

    it "returns a success response" do
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    login_user

    it "returns a success response" do
      get :show, params: { id: tweeet.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    login_user

    it "returns a success response" do
      get :new, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    login_user

    it "returns a success response" do
      get :edit, params: { id: tweeet.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    login_user

    context "with valid params" do
      it "creates a new Tweeet" do
        expect do
          post :create, params: { tweeet: valid_attributes }, session: valid_session
        end.to change(Tweeet, :count).by(1)
      end

      it "redirects to root path" do
        post :create, params: { tweeet: valid_attributes }, session: valid_session
        expect(response).to redirect_to(root_path)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { tweeet: invalid_attributes }, session: valid_session
        expect(response).to_not be_successful
      end
    end
  end

  describe "PUT #update" do
    login_user

    context "with valid params" do
      let(:new_attributes) do
        { content: "tweeet new" }
      end

      it "updates the requested tweeet" do
        put :update, params: { id: tweeet.to_param, tweeet: new_attributes }, session: valid_session
        tweeet.reload
        expect(tweeet.content).to eq("tweeet new")
      end

      it "redirects to the root path" do
        put :update, params: { id: tweeet.to_param, tweeet: valid_attributes }, session: valid_session
        expect(response).to redirect_to root_path
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        put :update, params: { id: tweeet.to_param, tweeet: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    login_user

    it "destroys the requested tweeet" do
      tweeet = Tweeet.create!(content: "tweeet", user: User.create!(email: "test@mail.com", password: 123123))

      expect do
        delete :destroy, params: { id: tweeet.to_param }, session: valid_session
      end.to change(Tweeet, :count).by(-1)
    end

    it "redirects to the tweeet" do
      delete :destroy, params: { id: tweeet.to_param }, session: valid_session
      expect(response).to redirect_to(tweeets_url)
    end
  end
end
