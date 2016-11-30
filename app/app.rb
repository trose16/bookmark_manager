require 'sinatra/base'
require_relative './models/link'

class Bookmark < Sinatra::Base

  get '/' do

  end

  get '/links' do
    @link = Link.all
    erb :'links/link2'
  end

  post '/links' do
    Link.create(url: params[:url], name: params[:name])
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/new_link'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
