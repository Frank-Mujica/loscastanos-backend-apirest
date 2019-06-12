# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
          devise :database_authenticatable, :registerable,
                  :recoverable, :rememberable, :trackable, :validatable
          include DeviseTokenAuth::Concerns::User

  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_uniqueness_of :email
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :rut, presence:true, length: { minimum: 9, maximum: 12 }, uniqueness: true
  validates :email, presence:true,  length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :birthdate, presence:true
  validates :region, presence:true
  validates :commune, presence:true
  validates :phone_number, presence:true, length: {minimum: 8, maximum: 8}
  validates :address, presence:true
  validates :admin, inclusion: { in: [true, false]}
end
