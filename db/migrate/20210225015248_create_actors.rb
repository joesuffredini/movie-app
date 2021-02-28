class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :know_for

      t.timestamps
    end
  end
end