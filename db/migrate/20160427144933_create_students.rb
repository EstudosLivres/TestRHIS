class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, limit: 45, null: false
      t.string :register_number, limit: 45, null: false
      t.integer :status, null: false

      t.timestamps null: false
    end
  end
end