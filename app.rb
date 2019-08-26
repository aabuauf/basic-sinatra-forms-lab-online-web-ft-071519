require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb :team
  end

  get '/newteam' do
    @teamName = params["teamName"]
    erb :newteam
  end
end
