class Loan < ApplicationRecord
  belongs_to :car
  belongs_to :person

	accepts_nested_attributes_for :car
end
