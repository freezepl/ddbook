class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.text :desc
      t.string :account_type
      t.string :position
      t.string :rate
      t.integer :rate_min
      t.integer :rate_max
      t.boolean :for_freelance
      t.boolean :for_hire
      t.string :url_github
      t.string :url_bitbucket
      t.string :url_dribbble
      t.string :url_fb
      t.string :url_linkedin
      t.string :url_behance
      t.string :url_website

      t.timestamps
    end
    add_index :profiles, :user_id
    add_index :profiles, :account_type

    add_column :users, :profile_completed, :boolean
  end
end
