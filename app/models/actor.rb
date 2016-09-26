class Actor < ActiveRecord::Base
  has_many :roles
  has_many :movies, :through => :roles
#  file_column :image
  
  validates_presence_of :name
  validates_presence_of :biography

end
