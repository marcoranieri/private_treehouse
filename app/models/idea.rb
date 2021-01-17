class Idea < ApplicationRecord
  acts_as_votable
  acts_as_taggable_on :tags

  has_many_attached :photos

  belongs_to :user
end
