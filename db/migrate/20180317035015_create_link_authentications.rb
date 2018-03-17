class CreateLinkAuthentications < ActiveRecord::Migration[5.2]
  def change
    create_table :link_authentications, id: :uuid do |t|
      t.references :user, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
