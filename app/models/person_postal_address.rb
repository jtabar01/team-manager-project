class PersonPostalAddress < ApplicationRecord
  belongs_to :person
  belongs_to :postal_address
end
