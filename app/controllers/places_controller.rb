class PlacesController < ApplicationController
    
    get '/places' do
        erb :'/places/index'
    end

end