class Visitedplace < ActiveRecord::Base
  belongs_to :journal
  has_many :facts
  has_many :pictures
end
