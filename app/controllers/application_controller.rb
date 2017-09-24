require './config/environment'

class ApplicationController < Sinatra::Base

    get '/' do
        "Hello World!"
    end

end