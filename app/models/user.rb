class User < ApplicationRecord
  #after_update_commit {  }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable,  and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

 def online
   if current_sign_in_at.present?
     last_sign_out_at.present? ? current_sign_in_at > last_sign_out_at : true
   else
     false
   end
 end

end
