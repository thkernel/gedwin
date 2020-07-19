class CreateImputationItems < ActiveRecord::Migration[5.2]
  def change
    create_table :imputation_items do |t|
      t.string :uid
      t.references :imputation, foreign_key: true
      t.references :imputation_reason, foreign_key: true

      t.timestamps
    end
  end
end
