class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :bio
      t.string :health
      t.string :phobia
      t.string :hobby
      t.string :personality
      t.string :baggage
      t.text :additional_info

      t.timestamps
    end
  end
end
