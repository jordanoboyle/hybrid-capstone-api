class ChangeAboutMeInUserToText < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :about_me, :text
  end
end
