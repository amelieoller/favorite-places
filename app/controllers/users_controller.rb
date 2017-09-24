class UsersController < ApplicationController

    get '/signup' do
        erb :'/users/new'
    end

end