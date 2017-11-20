class Professor < ApplicationRecord
  belongs_to :university
  belongs_to :campus
  has_and_belongs_to_many :disciplines

  validates_presence_of :name, :age, :formation_area
  validates_uniqueness_of :name
  validates_numericality_of :age, greater_than_or_equal_to: 18 
  validates_format_of :formation_area, with: /[a-zA-Z(\,)?(\s)?]/
end