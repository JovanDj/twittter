# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Tweeets', type: :request do
  describe 'GET /tweeets' do
    it 'opens tweets index page' do
      get '/tweeets'
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /tweeets/1' do
    it 'opens tweets index page if it exists' do
      Tweeet.create!(content: 'tweeet')
      get '/tweeets/1'
      expect(response).to have_http_status(200)
    end

    it "redirects to root if it doesn't exist" do
      get '/tweeets/1'
      expect(response).to have_http_status(302)
    end
  end
end
