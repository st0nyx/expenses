class Expense < ApplicationRecord
  belongs_to :store
  belongs_to :kind

end
