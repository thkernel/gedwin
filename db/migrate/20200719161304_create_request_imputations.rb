class CreateRequestImputations < ActiveRecord::Migration[5.2]
  def change
    create_table :request_imputations do |t|
      t.references :service, foreign_key: true
      t.references :receiver, index: true
      t.references :request, foreign_key: true
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
