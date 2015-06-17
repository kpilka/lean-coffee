class Team < ActiveRecord::Base
  validates_presence_of :name
  has_many :sessions, -> { order('created_at DESC') }, dependent: :destroy
end
