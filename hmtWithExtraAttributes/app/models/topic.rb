class Topic < ApplicationRecord
	has_many :linkers
	has_many :articles, :through => :linkers

	accepts_nested_attributes_for :articles
	accepts_nested_attributes_for :linkers
end
