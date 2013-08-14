class Branch < ActiveRecord::Base
  attr_accessible :account, :agence, :cnpj, :name
end
