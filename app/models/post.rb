class Post < ApplicationRecord
  belongs_to :usuario
  
  has_many :comentarios, dependent: :destroy

  validates :contenido, presence: { message: "no puede estar vacio" }
end
