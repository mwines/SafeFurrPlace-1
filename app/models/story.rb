class Story < ActiveRecord::Base
  belongs_to :user

  include PublicActivity::Model
  tracked

  validates :title, presence: true
  validates :body, presence: true
end
