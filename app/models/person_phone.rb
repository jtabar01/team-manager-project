class PersonPhone < ApplicationRecord
  belongs_to :person
  belongs_to :phone
end
