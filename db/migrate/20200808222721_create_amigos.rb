class CreateAmigos < ActiveRecord::Migration[6.0]
  def change
    create_table :amigos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :amistad, index: true

      t.timestamps
    end
  end
end
