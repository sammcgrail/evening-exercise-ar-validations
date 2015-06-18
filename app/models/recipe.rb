class Recipe < ActiveRecord::Base
  has_many :comments
  validates :name, presence: true
  validates :name, uniqueness: true
  # validates :name, inclusion: { in: %w(brussels sprouts)}
  # validates :name, format: { with: /Brussels sprouts/ }
  validates :name, inclusion: { in: ["Brussels Sprouts"] }
  validates :theyield, :numericality => { :greater_than_or_equal_to => 1 }, allow_nil: true

  has_many :comments
end
