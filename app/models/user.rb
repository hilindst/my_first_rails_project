class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  before_create :downcase_email

  has_one :profile
  has_many :posts

  private

  def downcase_email
    self.email = email.downcase
  end
end