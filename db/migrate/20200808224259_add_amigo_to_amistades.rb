class AddAmigoToAmistades < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :amigos, :usuarios, column: :amistad_id
  end
end
