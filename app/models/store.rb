class Store < ActiveRecord::Base
  attr_accessible :area, 
				 :location,
				 :store_name, 
				:store_url
				



validates :area,  presence: true
validates :location,  presence: true
validates :store_name,  presence: true
validates :store_url,  presence: true





def self.search(search)
  if search
    find(:all, :conditions => ['store_url LIKE ?', "%#{search}%"])
	
	 
  else
    find(:all)
  end
end





end
