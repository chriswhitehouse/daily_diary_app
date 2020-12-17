# frozen_string_literal: true

require 'sinatra/base'

# DailyDiary is an online daily journal app
class DailyDiary < Sinatra::Base
  get '/' do
    'Hello DailyDiary!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
