class Employee < ActiveRecord::Base
  belongs_to :store
  validate :first_name
  validate :last_name
  validates_inclusion_of :hourly_rate, in: 40..200
  validate :store_id
end
