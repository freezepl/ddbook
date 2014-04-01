class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :text
    add_column :users, :account_type, :integer
    add_column :users, :job, :string
    add_column :users, :rate, :integer
    add_column :users, :rate_min, :integer
    add_column :users, :rate_max, :integer
    add_column :users, :freelance, :boolean
    add_column :users, :hire, :boolean
    add_column :users, :url_github, :text
    add_column :users, :url_bitbucket, :text
    add_column :users, :url_dribbble, :text
    add_column :users, :url_fb, :text
    add_column :users, :url_linkedin, :text
    add_column :users, :url_behance, :text
    add_column :users, :url_website, :text
    add_column :users, :profile_completed, :boolean

    add_index :users, :account_type
  end
end
