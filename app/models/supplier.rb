class Supplier < ActiveRecord::Base
  attr_accessible :contact_email, :contact_name, :contact_telephone, :contract, :name, :cpf, :cnpj, :type_supplier

  has_one :supplier_account
  has_many :budgets

  validates :contact_email, :presence=>true
  validates :contact_name, :presence=>true
  validates :contact_telephone, :presence=>true
  validates :name, :presence=>true
  validates :type_supplier, :presence=>true

  #validates :cpf, :length => { :is => 11 }, :if => :cpf
  #validates :cnpj, :length => { :is => 11 }, :if => :cnpj	
  

  validates :contact_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}


  validates :name, :uniqueness=>true
end
