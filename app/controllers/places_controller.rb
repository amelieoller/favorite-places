class PlacesController < ApplicationController
    
    get '/places' do
        erb :'/places/index'
    end

    get '/places/new' do
        erb :'/places/new'
    end

    post '/places' do
        @place = current_user.places.new(params[:place])
        @place.country = Country.find_or_create_by(params[:country])
        @place.save

        redirect "/places/#{@place.slug}"
    end

    get '/places/:slug' do
        @place = Place.find_by_slug(params[:slug])
        erb :'/places/show'
    end

end