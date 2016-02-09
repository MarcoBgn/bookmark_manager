require 'sinatra/base'
require './models/link.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    redirect '/links'
  end
  
  get '/links' do
    @links = Link.all
    erb :index
  end
  


  run! if app_file == $0
end
