class Place < ActiveRecord::Base
    belongs_to :country
    belongs_to :user
end