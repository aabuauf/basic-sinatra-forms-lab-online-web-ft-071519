require 'sinatra/base'

class App < Sinatra::Base


  get '/newteam' do
    erb :newteam
  end
  
  post '/newteam' do
    @teamName = params["teamName"]
    @coach = params["coach"]
    @pg = params["pg"]
    @sg = params["sg"]
    @sf = params["sf"]
    @pf = params["pf"]
    @center = params["center"]
    erb :team
  end
  
end
