class Contributor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :trackable and :omniauthable and :confirmable, :lockable, :timeoutable

  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable 
  validates :profile_name, presence: true, uniqueness: true
  has_many :recipes, :dependent => :destroy
  has_many :blogs, :dependent => :destroy
  has_many :comments, :dependent => :destroy
end
