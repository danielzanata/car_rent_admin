class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   def active_for_authentication? 
     super && approved?
   end

   def inactive_message
     approved? ? super : :not_approved
   end

   def name
     email.try(:split, '@').try(:first).try(:humanize)
   end
end
