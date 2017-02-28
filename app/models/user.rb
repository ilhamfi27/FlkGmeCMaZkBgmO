class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :password_salt

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :encryptable
         
  mount_uploader :avatar, AvatarUploader
  
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
