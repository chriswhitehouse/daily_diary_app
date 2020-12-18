# frozen_string_literal: true

require 'sinatra/base'

# DailyDiary is an online daily journal app
class Diary < Sinatra::Base
  get '/' do
    'Hello DailyDiary!'
  end

  post '/diary' do
    @entry = Entry.create(entry: params[:entry])
    erb :'diary/confirmation'
  end

  get '/diary/new' do
    erb :'diary/new'
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
