class Contact < ApplicationRecord
  # Associations - describing relatiosnhips
  # belongs_to
  # has_many
  # has_one
  # has_many :through
  #   dependent 

  has_many :notes, dependent: :destroy 
  has_one :address, dependent: :destroy

  #Validations 
  # - Model Validations, stop in the model to validate data going into the database
  validates :first_name, :last_name, :email, presence: true

  validates :age, numericality: true 
  validates :email, uniqueness: true

  
end
