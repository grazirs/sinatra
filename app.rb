# frozen_string_literal: true 

require 'sinatra'

get '/' do
  erb :index
end

get '/pr' do
  erb :pr
end

get '/university' do
  erb :university
end

not_found do
  erb :notfound
end
