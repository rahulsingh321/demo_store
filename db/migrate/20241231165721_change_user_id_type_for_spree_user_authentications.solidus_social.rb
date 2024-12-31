# frozen_string_literal: true

# This migration comes from solidus_social (originally 20210728123820)
class ChangeUserIdTypeForSpreeUserAuthentications < SolidusSupport::Migration[4.2]
  def change
    change_column :spree_user_authentications, :user_id, :bigint
  end
end
