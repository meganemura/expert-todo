class CreateAuthenticationTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :authentication_tokens, id: :uuid do |t|
      t.references :user, foreign_key: true
      t.string :email
      t.string :token

      t.timestamps
    end
    add_index :authentication_tokens, :token, unique: true
  end
end
