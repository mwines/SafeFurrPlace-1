class CreateRegistraions < ActiveRecord::Migration
  def change
    create_table :registraions do |t|
      t.string   :first_name
      t.string   :last_name
      t.integer  :phoneNumber
      t.string   :city
      t.string   :state
      t.string   :email
      t.integer  :count_pets
      
      t.timestamps null: false
    end
  end
end
