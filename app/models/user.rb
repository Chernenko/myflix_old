class User < ActiveRecord::Base;
  validates_presence_of :email, :username
  validates_uniqueness_of :email, :username
  has_secure_password validations: false

end
