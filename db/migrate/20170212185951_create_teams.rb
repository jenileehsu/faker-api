class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :state
      t.string :creature
      t.string :sport

      t.timestamps
    end
  end
end
