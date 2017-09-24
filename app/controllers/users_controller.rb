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
        erb :'/users/login'
    end

end