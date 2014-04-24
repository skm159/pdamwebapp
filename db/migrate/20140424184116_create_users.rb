class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :role
      t.string :mobile
      t.string :location
      t.string :ext

      t.timestamps
    end
  end
end
