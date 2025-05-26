class CreateRelatives < ActiveRecord::Migration[8.0]
  def change
    create_table :relatives do |t|
      t.references :employee, null: false, foreign_key: true
      t.string :full_name
      t.date :birth_date
      t.string :gender
      t.string :relationship

      t.timestamps
    end
  end
end
