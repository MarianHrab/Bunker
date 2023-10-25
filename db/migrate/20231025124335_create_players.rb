class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.text :bio
      t.integer :health
      t.string :hobby
      t.string :character
      t.string :baggage
      t.text :additional_info
      t.string :knowledge
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
