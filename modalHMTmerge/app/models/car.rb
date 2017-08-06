class Car < ApplicationRecord
	has_many :loans
	has_many :people, :through => :loans
end
