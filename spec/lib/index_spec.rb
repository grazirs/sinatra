# frozen_string_literal: true

require_relative '../../app'
require 'rspec'
require 'rack/test'

describe 'app.rb' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'GET /' do
    it 'returns index.erb' do
      get '/'
      expect(last_response).to be_ok
    end
  end

  describe 'GET /pr' do
    it 'returns pr.erb' do
      get '/pr'
      expect(last_response).to be_ok
    end
  end

  describe'GET /university' do
    it 'returns university.erb' do
      get '/university'
      expect(last_response).to be_ok
    end
  end

  describe'GET /notfound' do
    it "returns status 404" do
      get 'notfound'
      expect(last_response.status).to eq(404)
    end
  end
end
