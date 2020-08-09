class Amigo < ApplicationRecord
  belongs_to :usuario
  belongs_to :amistad, class_name: "Usuario"
end
