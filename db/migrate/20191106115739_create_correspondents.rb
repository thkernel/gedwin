class CreateCorrespondents < ActiveRecord::Migration[5.2]
  def change
    create_table :correspondents do |t|
      t.string :uid
      t.references :correspondent_type, foreign_key: true
      t.string :organization_name
      t.string :first_name
      t.string :last_name
      t.string :civility
      t.string :address
      t.string :phone
      t.string :city
      t.string :country
      t.string :zip_code
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
