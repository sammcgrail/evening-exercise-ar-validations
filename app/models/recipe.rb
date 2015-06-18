class Recipe < ActiveRecord::Base
  has_many :comments
  validates :name, presence: true, uniqueness: true
  validates :name, inclusion: { in: %w(brussels sprouts)}
  validates :yield, :numericality => { :greater_than_or_equal_to => 1 }
end
