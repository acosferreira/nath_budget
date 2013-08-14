class Payment < ActiveRecord::Base
  belongs_to :budget
  belongs_to :branch
  
  attr_accessible :pay_day, :value, :budget_id

  validates :pay_day, :presence=>true
  validates :value, :presence=>true
  

end
