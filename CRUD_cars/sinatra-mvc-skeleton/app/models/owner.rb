class Owner < ActiveRecord::Base
  # Remember to create a migration!
  has_many  :cars
  validates :First_name, :Last_name, presence: true
end
