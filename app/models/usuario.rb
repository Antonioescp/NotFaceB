class Usuario < ApplicationRecord
  has_secure_password

  has_many :amigos, dependent: :destroy
  has_many :amistades, through: :amigos
  has_many :posts, dependent: :destroy
  has_many :comentarios, dependent: :destroy

  validates :correo, uniqueness: { message: "ya existe" }

  validates :nombre, :apellido, presence: { message: "no puede estar vacio" }
end
