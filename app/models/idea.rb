class Idea < ApplicationRecord
  belongs_to :user

  @@category = %w(
    UX
    UI
  )
end
