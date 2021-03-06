class User < ApplicationRecord
  has_secure_password

  before_validation :set_nameless_name
  private
    def set_nameless_name
                        self.name = 'ććăȘă' if name.blank?
    end

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :tasks
  private
end
