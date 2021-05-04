class CreateRequestCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :request_companies do |t|
      t.references :request, foreign_key: true
      t.string :company_name
      t.string :status

      t.timestamps
    end
  end
end
