class Skill < ActiveRecord::Base
  has_many :user_skills
  has_many :users, through: :user_skills

  validates_presence_of :name
end
