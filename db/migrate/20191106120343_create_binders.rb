class CreateBinders < ActiveRecord::Migration[5.2]
  def change
    create_table :binders do |t|
      t.string :uid
      t.references :folder, foreign_key: true
      t.string :name
      t.text :description
      t.string :status
      t.string :path
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
