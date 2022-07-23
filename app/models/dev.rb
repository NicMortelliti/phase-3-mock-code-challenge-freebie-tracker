class Dev < ActiveRecord::Base

  # Allows for Dev#freebies
  has_many :freebies

  # Allows for Dev#companies
  has_many :companies, through: :freebies

  # Received a freebie?
  def received_one?(item_name)
    # Pluck will give us an array of item_names
    # Then, we check if that array includes item_name parameter
    self.freebies.pluck(:item_name).include?(item_name)
  end
end
