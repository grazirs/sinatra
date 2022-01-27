# frozen_string_literal: true

require_relative '../../app'
require 'rspec'
require 'rack/test'

describe 'app.rb' do
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
  it 'returns index.html' do
    get '/'
    expect(last_response).to be_ok
  end

  it 'returns pr.html' do
    get '/pr'
    expect(last_response).to be_ok
  end

  it 'returns university.html' do
    get '/university'
    expect(last_response).to be_ok
  end
end
