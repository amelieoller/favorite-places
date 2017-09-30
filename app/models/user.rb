class User < ActiveRecord::Base
    
    has_secure_password
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :password, length: { in: 8..20 }

    has_many :places

    def slug
        self.name.downcase.gsub(" ", "-")
    end
    
    def self.find_by_slug(slug)
        self.all.find{ |instance| instance.slug == slug }
    end

end