class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :uid
      t.string :name
      t.references :role, foreign_key: true
      t.references :permission, foreign_key: true
      t.text :description
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
