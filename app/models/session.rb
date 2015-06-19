class Session < ActiveRecord::Base

  has_many :topics, dependent: :destroy
  belongs_to :team

  # Nice URLs
  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders]
  after_create :remake_slug
  
  # Try building a slug based on the following fields in
  # increasing order of specificity.
  def slug_candidates
    [
      :session_slug,
      [:session_slug, :title],
      [:session_slug, :id],
    ]
  end

  # The id of an object isn't yet assigned at the point slug_candidates is called
  def remake_slug
    self.update_attribute(:slug, nil)
    self.save!
  end

  def session_slug
    new_date.to_formatted_s(:default)
  end
end
