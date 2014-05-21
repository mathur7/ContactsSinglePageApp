class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :number
      t.string :imgUrl

      t.timestamps
    end
  end
end
