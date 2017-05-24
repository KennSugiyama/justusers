class CreateUsersSkills < ActiveRecord::Migration
  def change
    create_table :user_skills do |t|

      t.references :user, { null: false, foreign_key: true, index: true }
      t.references :skill, { null: false, foreign_key: true, index: true }

      t.timestamps null: false
    end
  end
end
