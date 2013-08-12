class Account < ActiveRecord::Base
  belongs_to :supplier
  attr_accessible :name, :supplier_id, :identifier

  validates :name, :presence=>true
  validates :name, :uniqueness=>true
end
