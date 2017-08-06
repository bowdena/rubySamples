class Person < ApplicationRecord
	has_many :loans
	has_many :cars, :through => :loans

	accepts_nested_attributes_for :cars
	accepts_nested_attributes_for :loans
end
