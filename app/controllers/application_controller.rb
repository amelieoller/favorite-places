require './config/environment'

class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, 'password_security'
    end

    get '/' do
        if logged_in?
            redirect '/places'
        else
            erb :index
        end
    end

    helpers do
        def current_user
            @current_user ||= User.find_by(:id => session[:user_id]) if session[:user_id]
        end

        def logged_in?
            !!current_user
        end
    end

    private 

        def authenticate_user  
            if !logged_in?
                redirect "/login"
            end
        end

end