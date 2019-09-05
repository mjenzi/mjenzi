class Contact < ActiveRecord::Base
	attr_accessor :name,:email,:message,:subject, :phone_number

  validates :name, presence: true
  validates :email, presence: true
  validates :email, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i,message: "is wrong" }
  validates :message, presence: true
  validates :subject, presence: true
  validates :phone_number,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 12 }
end