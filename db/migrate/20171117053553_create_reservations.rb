class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :listing, foreign_key: true
      t.string :lineid
      t.string :place
      t.string :name
      t.string :email
      t.string :date1
      t.string :date2
      t.string :date3

      t.timestamps
    end
  end
end
