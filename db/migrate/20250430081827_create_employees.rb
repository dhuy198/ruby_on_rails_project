class CreateEmployees < ActiveRecord::Migration[8.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.date :birth_date
      t.string :gender
      t.string :phone
      t.string :email
      t.string :address
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
