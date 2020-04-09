class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	validates :name, presence: true, uniqueness: true, length:{in: 2..20}
	validates :introduction, uniqueness: true, length:{maximum: 50}
 	has_many :books, dependent: :destroy
	# 1:Nの関係になるモデル名を複数形で記述
	attachment :profile_image

end
