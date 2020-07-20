class CreateRequestImputationItems < ActiveRecord::Migration[5.2]
  def change
    create_table :request_imputation_items do |t|
      t.string :uid
      t.references :task, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :closing_date
      t.references :task_status, foreign_key: true
      t.references :request_imputation, foreign_key: true
     

      t.timestamps
    end
  end
end
