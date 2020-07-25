class MaritimeTerm < ApplicationRecord
  validates :term, :explination, presence: true
  validates :term, uniqueness: true
end
