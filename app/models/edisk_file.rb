class EdiskFile < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :file_type, presence: true
  validates :shared, presence: true
  validates :path, presence: true
  validates :edisk_size, presence: true
end
