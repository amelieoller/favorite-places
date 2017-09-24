class PlacesController < ApplicationController
    
    get '/places' do
        erb :'/places/index'
    end

    get '/places/new' do
        erb :'/places/new'
    end

end