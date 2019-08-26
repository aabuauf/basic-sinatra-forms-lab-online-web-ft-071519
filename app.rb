require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb :team
  end

  get '/newteam' do
    @teamName = params["teamName"]
    @coach = params["coach"]
    @pg = params["pg"]
    @sg = params["sg"]
    @sf = params["sf"]
    @pf = params["pf"]
    @center = params["center"]
    erb :newteam
  end
end
