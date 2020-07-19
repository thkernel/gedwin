class CreateRequestImputationTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :request_imputation_tasks do |t|
      t.string :uid
      t.references :task_type, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :closing_date
      t.references :task_status, foreign_key: true
      t.references :request_imputation, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
