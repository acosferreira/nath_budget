class SupplierAccount < ActiveRecord::Base
  belongs_to :bank
  belongs_to :supplier
  attr_accessible :agence, :number, :bank_id, :supplier_id
end
