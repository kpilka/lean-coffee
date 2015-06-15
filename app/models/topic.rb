class Topic < ActiveRecord::Base
  
  belongs_to :session

  extend Enumerize

  enumerize :status, 
    in: [:to_talk_about, :talking_about, :talked_about],
    default: :to_talk_about

  validates :status, presence: true

end
