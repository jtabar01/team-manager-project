# Person table
rails g scaffold person first_name last_name date_of_birth:date gender height_in_inches:integer weight_in_pounds:integer
# Joined attributes for people
rails g scaffold postal_address street_line_1 street_line_2 city state zip
rails g scaffold phone number
rails g scaffold email_address address
# Junction tables for join attributes
rails g scaffold person_postal_address person:references postal_address:references
rails g scaffold person_phone person:references phone:references
rails g scaffold person_email_address person:references email_address:references
# Teams
rails g scaffold team name age_group
# Organizations
rails g scaffold organization name
# Teams to organization
rails g scaffold organization_team organization:references team:references
# Jerseys
rails g scaffold jersey person:references team:references number:integer
# Roles
rails g rolify Role Person
