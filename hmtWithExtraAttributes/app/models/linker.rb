class Linker < ApplicationRecord
  belongs_to :topic
  belongs_to :article
	
	accepts_nested_attributes_for :article
end
