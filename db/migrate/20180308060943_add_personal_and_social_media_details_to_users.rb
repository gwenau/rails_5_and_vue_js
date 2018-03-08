class AddPersonalAndSocialMediaDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :image, :text
    add_column :users, :dob, :date
    add_column :users, :mobile, :string
    add_column :users, :role, :string
    add_column :users, :github, :string
    add_column :users, :linkedin, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :address_line_1, :string
    add_column :users, :address_line_2, :string
    add_column :users, :city, :string
    add_column :users, :postcode, :string
    add_column :users, :cancan_role, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :personal_website, :string
    add_column :users, :display, :string
    add_column :users, :facebook_token, :string
  end
end
