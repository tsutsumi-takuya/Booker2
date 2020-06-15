class Userimage < ApplicationRecord

	belongs_to :user
	attachment :image

end
