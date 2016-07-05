class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.integer :pessoa_id
      t.string :login
      t.string :password_digest

      t.timestamps
    end
    add_foreign_key :usuarios, :pessoas, column: :pessoa_id
  end
end
