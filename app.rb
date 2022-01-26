require 'sinatra'

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

get '/pullrequest' do
  send_file File.join(settings.public_folder, 'pr.html')
end

get '/university' do
  send_file File.join(settings.public_folder, 'university.html')
end