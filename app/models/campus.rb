class Campus < ApplicationRecord
  self.table_name = 'campus'

  belongs_to :university
end
