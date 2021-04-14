class EdiskDirectory < ApplicationRecord
  belongs_to :user
  has_many :edisk_files

  validates :name, presence: true
  validates :path, presence: true
  validates :owner, presence: true


end
