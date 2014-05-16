class Comment < ActiveRecord::Base
  after_initialize :defaults
  
  belongs_to :article
  belongs_to :user
  
#  validates :content, presence: true

  def defaults
    self.submitted_at = DateTime.now
  end
end
