class User < ActiveRecord::Base

  has_many :blogs
	
  attr_accessible :birthday, :email, :name

  validates_presence_of :name

  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => :create }
end
