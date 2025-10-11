class CreateMorsestores < ActiveRecord::Migration[7.2]
  def change
    create_table :morsestores do |t|
      t.text :original_text
      t.text :translated_text

      t.timestamps
    end
  end
end
