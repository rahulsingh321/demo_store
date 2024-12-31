# frozen_string_literal: true

# This migration comes from solidus_social (originally 20171028234629)
class AddForeignKeyToUserAuthenticationsForUserId < SolidusSupport::Migration[4.2]
  def change
    add_foreign_key :spree_user_authentications, :spree_users, column: :user_id
  end
end
