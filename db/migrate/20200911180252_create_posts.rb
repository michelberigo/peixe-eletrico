class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :descricao
      t.integer :user_id
      t.timestamps
    end

    add_reference(:users, :user_id)
  end
end
