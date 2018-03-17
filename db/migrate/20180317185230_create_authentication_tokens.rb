class CreateAuthenticationTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :authentication_tokens, id: :uuid do |t|
      t.references :user, foreign_key: true, type: :uuid
      t.string :email, index: { unique: true }
      t.string :token

      t.timestamps
    end
    add_index :authentication_tokens, :token, unique: true
  end
end
