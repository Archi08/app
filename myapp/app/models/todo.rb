class Todo < ApplicationRecord
  scope :todo, -> {
    where(:isCompleted => false)
  }
end
