class User < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :height
      t.integer :happiness
      t.integer :nausea 
      t.integer :tickets
      t.string :password_digest
    end
  end
end
