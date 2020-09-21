class CreateCommentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comentario
      t.string :usuario_email
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
