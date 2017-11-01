class CreateLibcompls < ActiveRecord::Migration[5.1]
  def change
    create_table :libcompls do |t|
      t.references :area
      t.string :act
      t.string :state
      t.date :date
      t.string :compliance_task
      t.text :compliance_details
      t.string :frequency
      t.boolean :demo, default: true
      t.boolean :review, default: true
      t.integer :employees
      t.integer :workmen
      t.integer :contractors
      t.string :ref

      t.timestamps
    end
  end
end
