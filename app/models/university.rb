class University < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :alimentations, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :teachers, dependent: :destroy
  has_many :student_entities, dependent: :destroy
  has_many :campus, dependent: :destroy, class_name: 'Campus'
end
