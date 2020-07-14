class CreateMaritimeTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :maritime_terms do |t|
      t.string :term
      t.text :explination

      t.timestamps
    end
  end
end
