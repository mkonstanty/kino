class Performance < ActiveRecord::Base
  belongs_to :movie
  belongs_to :cinema
  validates_presence_of :started_at
  validates_presence_of :movie_id
  
end
