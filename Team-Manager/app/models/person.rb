class Person < ApplicationRecord
   has_many :Emails
   has_many :Phone_numbers
end
