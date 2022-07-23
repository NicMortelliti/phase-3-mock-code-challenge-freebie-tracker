class Company < ActiveRecord::Base

  # Allows for Company#freebies
  has_many :freebies

  # Allows for Company#devs
  has_many :devs, through: :freebies
end
