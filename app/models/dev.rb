class Dev < ActiveRecord::Base

  # Allows for Dev#freebies
  has_many :freebies

  # Allows for Dev#companies
  has_many :companies, through: :freebies
end
