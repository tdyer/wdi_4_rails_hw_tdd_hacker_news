class Article < ActiveRecord::Base
  validates :title, presence: true
  # validates :url, format: { with: /URI.regexp/ }
  validates :url, format: { with: /\Ahttp\:\/\/.*\z/ }

  has_many :comments
end
