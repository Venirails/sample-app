class Staff < ApplicationRecord
  belongs_to :company

  self.per_page = 3
end
