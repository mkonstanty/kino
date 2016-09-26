class Movie < ActiveRecord::Base
  has_many :roles
  has_many :actors, :through => :roles
  has_many :performances
#  file_column :image
  
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :length
  
end
