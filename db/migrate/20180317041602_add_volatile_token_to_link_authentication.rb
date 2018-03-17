class AddVolatileTokenToLinkAuthentication < ActiveRecord::Migration[5.2]
  def change
    add_column :link_authentications, :volatile_token, :uuid
  end
end
