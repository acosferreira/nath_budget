class Notification < ActiveRecord::Base
  attr_accessible :name, :value

  validates :value, :presence=>true
  validates :name, :presence=>true

  validates :name, :uniqueness=>true
end
