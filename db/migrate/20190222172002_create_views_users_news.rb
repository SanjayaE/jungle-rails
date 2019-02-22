class CreateViewsUsersNews < ActiveRecord::Migration
  def change
    create_table :views_users_news do |t|

      t.timestamps null: false
    end
  end
end
