class Staff < ActiveRecord::Base
  authenticates_with_sorcery!

  validates_confirmation_of :password
  validates_presence_of :password,  :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username

  def self.authenticate(*args)
    if staff = self.find_by_username(args[0]) and staff.active?
      super(*args)
    else
      nil
    end
  end
end
