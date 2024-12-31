# frozen_string_literal: true

# This migration comes from solidus_social (originally 20171028223910)
class AddDbIndexToUserAuthentications < SolidusSupport::Migration[4.2]
  def change
    add_index :spree_user_authentications, [:uid, :provider], unique: true
    add_index :spree_user_authentications, :user_id
  end
end
