class Comment < ActiveRecord::Base
  after_initialize :defaults
  belongs_to :article

  validates :content, presence: true

  def defaults
    self.submitted_at = DateTime.now
  end
end
