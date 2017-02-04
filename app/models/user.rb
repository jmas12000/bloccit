class User < ActiveRecord::Base
  before_save { email.downcase if email.present?  }
  before_save :correct_name
 
  def correct_name
    names = []
    names << name.split(' ').map(&:capitalize)
    self.name = names.join(' ') 
  end
  
  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
  
  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

  has_secure_password
end
