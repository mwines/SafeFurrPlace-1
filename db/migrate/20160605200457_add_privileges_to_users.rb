class AddPrivilegesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :privileges, :integer
  end
end
