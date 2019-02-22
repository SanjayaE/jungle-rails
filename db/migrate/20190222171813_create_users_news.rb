class CreateUsersNews < ActiveRecord::Migration
  def change
    create_table :users_news do |t|

      t.timestamps null: false
    end
  end
end
