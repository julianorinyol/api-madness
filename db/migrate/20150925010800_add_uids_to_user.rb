class AddUidsToUser < ActiveRecord::Migration
  def change
    add_column :users, :github_uid, :string
    add_column :users, :tumblr_uid, :string
    add_column :users, :twitter_uid, :string
    add_column :users, :linkedin_uid, :string
    add_column :users, :google_uid, :string
  end
end
