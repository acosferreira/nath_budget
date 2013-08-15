class Payment < ActiveRecord::Base
  belongs_to :budget
  belongs_to :branch
  belongs_to :supplier

  attr_accessible :pay_day, :value, :budget_id, :branch_id, :supplier_id

  validates :pay_day, :presence=>true
  validates :value, :presence=>true
  

end
