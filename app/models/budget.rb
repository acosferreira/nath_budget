class Budget < ActiveRecord::Base
  belongs_to :competence_center
  belongs_to :supplier

  has_many :payments,  :dependent => :delete_all

  attr_accessible :time_to_conclude, :total_value, :supplier_id, :competence_center_id

  validates :time_to_conclude, :presence=>true
  validates :total_value, :presence=>true
  validates :competence_center, :presence=>true
  validates :supplier, :presence=>true

  before_save :set_balance
  after_save :create_payments
  
  def set_balance
  	self.balance = self.total_value if self.balance.blank?
  end

  def create_payments
  	value = total_value/time_to_conclude
  	(1..self.time_to_conclude).each do |payment|
  		Payment.create(:value =>value,:pay_day=>(Date.today +(30*payment)), :budget_id=> self.id)
  	end
  end
end
