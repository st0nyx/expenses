class Kind < ApplicationRecord
  has_many :expenses
  accepts_nested_attributes_for :expenses,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

end


