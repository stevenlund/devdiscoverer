class Developer < ApplicationRecord
  has_many :skills
  has_many :features
end
