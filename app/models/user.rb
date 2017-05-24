class User < ActiveRecord::Base
  has_many  :user_skills
  has_many  :skills, through: :user_skills

  validates_presence_of :name, :age

end
