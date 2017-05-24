class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name, { null: false }
      t.integer :age, { null: false, default: 0 }

      t.timestamps null: false
    end
  end
end
