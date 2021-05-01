class CreateHoas < ActiveRecord::Migration[6.1]
  def change
    create_table :hoas do |t|
      t.string :contact
      t.string :phone
      t.string :email
      t.string :community
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :website

      t.timestamps
    end
  end
end
