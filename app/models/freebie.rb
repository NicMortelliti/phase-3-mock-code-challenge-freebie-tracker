class Freebie < ActiveRecord::Base

  # Allows for Freebie#company
  belongs_to :company

  # Allows for Freebie#dev
  belongs_to :dev

  # Print details
  def print_details
    puts "#{dev.name} owns a #{self.item_name} from #{company.name}"
  end
end
