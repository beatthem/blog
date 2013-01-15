class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  validates :title, { :presence => true, :length => { :minimum => 5 } }
  has_many :comments, :dependent => :destroy
  # has_one :user, :dependent => :destroy
  # belongs_to :user
  belongs_to :user
end
