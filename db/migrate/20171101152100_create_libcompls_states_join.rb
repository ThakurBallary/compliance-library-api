class CreateLibcomplsStatesJoin < ActiveRecord::Migration[5.1]
  def change
    create_table :libcompls_states, id: false do |t|
    	t.integer :libcompl_id
    	t.integer :state_id
    end
    add_index :libcompls_states, [:libcompl_id, :state_id]
  end
end
