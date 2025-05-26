class Employee < ApplicationRecord
  has_many :relatives, dependent: :destroy
  accepts_nested_attributes_for :relatives, allow_destroy: true
end
