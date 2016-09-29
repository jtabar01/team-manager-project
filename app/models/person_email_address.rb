class PersonEmailAddress < ApplicationRecord
  belongs_to :person
  belongs_to :email_address
end
