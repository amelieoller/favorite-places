class PlacesController < ApplicationController
    
    get '/places' do
        erb :'/places/index'
    end

    get '/places/new' do
        @message = session.delete(:message)
        erb :'/places/new'
    end

    post '/places' do
        if params[:place][:name].empty? || params[:place][:city].empty? || params[:country][:name].empty?
            session[:message] = "Please fill out all of the fields."
            redirect "/places/new"
        else
            @place = current_user.places.new(params[:place])
            @place.country = Country.find_or_create_by(params[:country])
            @place.save
    
            redirect "/places/#{@place.slug}"
        end
    end

    get '/places/:slug/edit' do
        if logged_in?
            @place = Place.find_by_slug(params[:slug])
            if @place.user_id.to_i == current_user.id
                @message = session.delete(:message)
                erb :'/places/edit'
            else
                redirect "/places"
            end
        else
            redirect "/login"
        end
    end

    patch '/places/:slug' do
        if params[:place][:name].empty? || params[:place][:city].empty? || params[:country][:name].empty?
            session[:message] = "Please fill out all of the fields."
            redirect "/places/#{params[:slug]}/edit"
        else
            @place = Place.find_by_slug(params[:slug])
            @place.update(params[:place])
            @place.country.update(params[:country])
            @place.save
            redirect "/places/#{@place.slug}"
        end
    end

    delete '/places/:slug/delete' do
        if logged_in?
            @place = Place.find_by_slug(params[:slug])
            if @place.user_id.to_i == current_user.id
                @place.destroy
                redirect "/users/#{@place.user.slug}"
            else
                redirect "/users/#{@place.user.slug}"
            end
        else
            redirect '/login'
        end
    end

    get '/places/:slug' do
        if logged_in?
            @place = Place.find_by_slug(params[:slug])
            if @place.user_id.to_i == current_user.id
                @place = Place.find_by_slug(params[:slug])
                erb :'/places/show'
            else
                redirect "/places"
            end
        else
            redirect '/login'
        end
    end
        

end