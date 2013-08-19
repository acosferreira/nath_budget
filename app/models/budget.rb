class Budget < ActiveRecord::Base
  belongs_to :competence_center
  belongs_to :supplier
  belongs_to :recurrency
  has_many :payments,  :dependent => :delete_all

  attr_accessible :name, :time_to_conclude, :total_value, :supplier_id, :competence_center_id, :contract_number, :expiration_date, :recurrency_id

  validates :time_to_conclude, :presence=>true
  validates :total_value, :presence=>true
  validates :competence_center, :presence=>true
  validates :supplier, :presence=>true
  validates :contract_number, :uniqueness=>true

  before_save :set_balance
  after_save :create_payments
  
  def set_balance
  	self.balance = self.total_value if self.balance.blank?
  end

  def create_payments
    if self.payments.blank?
      qtd_parcelas = (self.time_to_conclude/self.recurrency.value)
  	  value = total_value/qtd_parcelas
  	 (1..qtd_parcelas).each do |payment|
        require 'pry'
        binding.pry
  	   	Payment.create(:value =>value,:pay_day=>(Date.today+(30*payment)), :budget_id=> self.id, :supplier_id=>self.supplier.id)
  	  end
    end
  end
end
