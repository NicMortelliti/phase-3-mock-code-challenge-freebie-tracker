class Company < ActiveRecord::Base

  # Allows for Company#freebies
  has_many :freebies

  # Allows for Company#devs
  has_many :devs, through: :freebies

  # Give Freebie
  def give_freebie(dev, item_name, value)
    Freebie.create(
      item_name: item_name,
      value: value,
      dev_id: dev,
      company_id: self.id )
  end
end
