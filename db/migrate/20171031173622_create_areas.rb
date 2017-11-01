class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.integer :position
      t.string :name

      t.timestamps
    end
  end
end
