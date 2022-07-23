class Freebie < ActiveRecord::Base

  # Allows for Freebie#company
  belongs_to :company

  # Allows for Freebie#dev
  belongs_to :dev
end
