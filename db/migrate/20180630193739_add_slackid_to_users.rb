class AddSlackidToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :slackid, :string
  end
end
