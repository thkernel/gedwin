class CreateIndices < ActiveRecord::Migration[5.2]
  def change
    create_table :indices do |t|
      t.string :name
      t.text :description
      t.string :status
      t.references :indexable, polymorphic: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
