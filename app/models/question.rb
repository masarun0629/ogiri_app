class Question < ApplicationRecord
  validates :occupation, presence: true
  
  belongs_to :user
end
