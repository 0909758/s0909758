class User < ActiveRecord::Base
  has_secure_password
  has_many :posts, dependent: :destroy, foreign_key: 'user_id'

  validates :first_name,
            presence: true
  validates :last_name,
            presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
                with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  def to_s
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    where('first_name LIKE ? OR last_name LIKE ?', "%#{search}%", "%#{search}%")

  end

end
