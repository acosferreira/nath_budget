class SupplierContract < ActiveRecord::Base
  belongs_to :supplier
  attr_accessible :description, :initial_date, :observation, :agence, :account_number, :supplier_id

  validates :description, :presence=>true
  validates :initial_date, :presence=>true
  validates :observation, :presence=>true
  validates :agence, :presence=>true
  validates :account_number, :presence=>true
  validates :supplier_id, :uniqueness=>true
end
