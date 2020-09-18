class CreateNewsletters < ActiveRecord::Migration[6.0]
  def change
    create_table :newsletters do |t|
      t.string :email, null: false, default: ""
      t.timestamps
    end

    add_index :newsletters, :email, unique: true
  end
end
