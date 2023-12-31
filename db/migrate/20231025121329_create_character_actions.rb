class CreateCharacterActions < ActiveRecord::Migration[7.0]
  def change
    create_table :character_actions do |t|
      t.references :character, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true

      t.timestamps
    end
  end
end
