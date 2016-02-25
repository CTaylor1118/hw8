class Bug < ActiveRecord::Base
  belongs_to :user
  validates :title, :description, :issue_type, :priority, :status, presence: true
  validates :title, length: {minimum: 5, maximum: 80}
  validates :description, length: {minimum: 20, maximum: 800}

  enum issue_type: [:issue, :enhancement, :feature] 
  enum priority: [:low, :medium, :high]
  enum status: [:open, :closed, :monitor]
end
