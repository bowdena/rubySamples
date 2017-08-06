class Article < ApplicationRecord
	has_many :linkers
	has_many :topics, :through => :linkers
end
