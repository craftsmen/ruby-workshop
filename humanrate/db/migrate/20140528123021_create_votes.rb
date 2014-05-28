class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :note
      t.references :talk, index: true

      t.timestamps
    end
  end
end
