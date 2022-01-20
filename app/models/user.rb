class User < ApplicationRecord


    def self.search(search)
        if search 
          where (["first_name LIKE ? OR  last_name LIKE ?","%#{search}%","#{search}%"])
           User.where("email LIKE ? OR user_id LIKE ?", "%#{search}%", "%#{search}%")
        else
          all 
        end 
      end
end
