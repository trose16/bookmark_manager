require 'sinatra/base'
require './app/models/link'


class Bookmark_manager < Sinatra::Base


  get '/links/new' do
    erb(:'links/new')
  end

  get '/links' do
    @links = Link.all
    erb(:'links/index')
  end

  post '/links' do
    link = Link.create(:title => params[:title], :url => params[:url])
    redirect '/links'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
