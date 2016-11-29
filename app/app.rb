require 'sinatra/base'
require_relative './models/link'

class Bookmark < Sinatra::Base

  get '/' do

  end

  get '/links' do
    @link = Link.all
    erb (:link2)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
