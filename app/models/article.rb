class Article < ActiveRecord::Base
  after_initialize :defaults
  
  validates :title, presence: true
  # validates :url, format: { with: /URI.regexp/ }
  validates :url, format: { with: /\Ahttp\:\/\/.*\z/ }

  has_many :comments

  def defaults
    self.submitted_at = DateTime.now
  end

end
