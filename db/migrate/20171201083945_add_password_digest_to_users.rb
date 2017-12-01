class AddPasswordDigestToUsers < ActiveRecord::Migration[5.1]
  def change
    if Rails.env == "production"
    else
      add_column :users, :password_digest, :string
    end
  end
end
