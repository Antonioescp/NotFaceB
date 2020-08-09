class Comentario < ApplicationRecord
  belongs_to :usuario
  belongs_to :post

  validates :contenido, presence: { message: "no puede estar vacio" }
end
