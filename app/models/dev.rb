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

  # Give away freebie
  def give_away(dev, freebie)

    # Freebie can only be given away by
    # dev who currently has it
    if received_one?(freebie) == true
      
      # Changes freebies dev to be the given dev
      freebie_full = Freebie.find_by(item_name: freebie)

      freebie_full.dev_id = Dev.find_by(name: dev).id
      freebie_full.save

      puts "#{self.name} gave their #{freebie} to #{dev}."

    else
      puts "#{self.name} has no #{freebie} to give away."
    end

  end
end