class CreateUsers < ActiveRecord::Migration
  def change
    def change
      create_table :users do
        t.string :username, null: false
        t.string :password_hash, null: false

        t.timestamps
      end
    end
  end
end
