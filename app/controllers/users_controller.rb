class UsersController < ApplicationController

    get '/signup' do
        erb :'/users/new'
    end

    post '/signup' do
        @user = User.create(params)
        session[:user_id] = @user.id
        redirect "/places"
    end

    get '/login' do
        @message = session[:message]
        erb :'/users/login'
    end

    post '/login' do
        user = User.find_by(:name => params[:name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/places"
        else
            session[:message] = "That didn't work... Try logging in again or sign up if you don't have an account yet."
            redirect "/login"
        end
    end


end