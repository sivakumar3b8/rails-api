class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true



    def self.search(search)
        if search 
          where (["first_name LIKE ? OR  last_name LIKE ?","%#{search}%","#{search}%"])
           User.where("email LIKE ? OR user_id LIKE ?", "%#{search}%", "%#{search}%")
        else
          all 
        end 
      end
end
