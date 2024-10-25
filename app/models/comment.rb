class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype

  validates :comment,    presence:true
  validates :catch_copy, presence: true
  validates :concept,    presence: true
end
