class Item < ApplicationRecord
	belongs_to :user

	#Search method(add search)
	def self.search(title)
		if title
			Item.where(['title LIKE ?', "%#{title}%"])
		else
			Item.all
		end
	end
end
