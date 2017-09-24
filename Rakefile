ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

dec "Rake Console"
task :console do 
    Pry.start
end