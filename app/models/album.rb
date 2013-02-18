class Album < ActiveRecord::Base
  attr_accessible :name, :user_id
  validates :name, :length => { :maximum => 50 }
  belongs_to :user
end
