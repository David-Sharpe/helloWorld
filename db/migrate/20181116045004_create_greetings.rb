class CreateGreetings < ActiveRecord::Migration[5.2]
  def change
    create_table :greetings do |t|
      t.string :country, limit: 3
      t.string :phrase

      t.timestamps
    end
    add_index :greetings, :country, unique: true
  end
end
