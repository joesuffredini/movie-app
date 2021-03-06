class Actor < ApplicationRecord
  validates :first_name, length: { minimum: 6 }
  validates :last_name, length: { minimum: 2 }
  validates :know_for, presence: true
  validates :age, numericality: { greater_than: 50 }

end
