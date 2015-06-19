require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Session. As you add validations to Session, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SessionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all sessions as @sessions" do
      session = Session.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:sessions)).to eq([session])
    end
  end

  describe "GET #show" do
    it "assigns the requested session as @session" do
      session = Session.create! valid_attributes
      get :show, {:id => session.to_param}, valid_session
      expect(assigns(:session)).to eq(session)
    end
  end

  describe "GET #new" do
    it "assigns a new session as @session" do
      get :new, {}, valid_session
      expect(assigns(:session)).to be_a_new(Session)
    end
  end

  describe "GET #edit" do
    it "assigns the requested session as @session" do
      session = Session.create! valid_attributes
      get :edit, {:id => session.to_param}, valid_session
      expect(assigns(:session)).to eq(session)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Session" do
        expect {
          post :create, {:session => valid_attributes}, valid_session
        }.to change(Session, :count).by(1)
      end

      it "assigns a newly created session as @session" do
        post :create, {:session => valid_attributes}, valid_session
        expect(assigns(:session)).to be_a(Session)
        expect(assigns(:session)).to be_persisted
      end

      it "redirects to the created session" do
        post :create, {:session => valid_attributes}, valid_session
        expect(response).to redirect_to(Session.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved session as @session" do
        post :create, {:session => invalid_attributes}, valid_session
        expect(assigns(:session)).to be_a_new(Session)
      end

      it "re-renders the 'new' template" do
        post :create, {:session => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested session" do
        session = Session.create! valid_attributes
        put :update, {:id => session.to_param, :session => new_attributes}, valid_session
        session.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested session as @session" do
        session = Session.create! valid_attributes
        put :update, {:id => session.to_param, :session => valid_attributes}, valid_session
        expect(assigns(:session)).to eq(session)
      end

      it "redirects to the session" do
        session = Session.create! valid_attributes
        put :update, {:id => session.to_param, :session => valid_attributes}, valid_session
        expect(response).to redirect_to(session)
      end
    end

    context "with invalid params" do
      it "assigns the session as @session" do
        session = Session.create! valid_attributes
        put :update, {:id => session.to_param, :session => invalid_attributes}, valid_session
        expect(assigns(:session)).to eq(session)
      end

      it "re-renders the 'edit' template" do
        session = Session.create! valid_attributes
        put :update, {:id => session.to_param, :session => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested session" do
      session = Session.create! valid_attributes
      expect {
        delete :destroy, {:id => session.to_param}, valid_session
      }.to change(Session, :count).by(-1)
    end

    it "redirects to the sessions list" do
      session = Session.create! valid_attributes
      delete :destroy, {:id => session.to_param}, valid_session
      expect(response).to redirect_to(sessions_url)
    end
  end

end
