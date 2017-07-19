class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :avatar_url, :string
    add_column :users, :birthday, :datetime
    add_column :users, :fb_token, :string
    add_column :users, :google_token, :string
    add_column :users, :introduce, :text
    add_column :users, :phone_number, :string
    add_column :users, :gender, :boolean
    add_column :users, :friend_count, :integer
    add_column :users, :last_login_ip, :string
    add_column :users, :total_login_time, :integer
    add_column :users, :last_login_date, :datetime
  end
end
