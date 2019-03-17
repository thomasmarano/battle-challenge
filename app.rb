require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    'Howdy Thomas'
  end

  run! if app_file == $0

end
