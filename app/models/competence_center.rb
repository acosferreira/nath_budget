class CompetenceCenter < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :user_id

  validates :name, :presence=>true
 # validates :user, :presence=>true
  validates :name, :uniqueness=>true
  
end
