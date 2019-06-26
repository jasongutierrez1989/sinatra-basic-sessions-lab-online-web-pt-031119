require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session_secretitem = params["item"]
    @sessions << session_secretitem
    @sessions[:item] = item
  end
end
