class CreateImputationItems < ActiveRecord::Migration[5.2]
  def change
    create_table :imputation_items do |t|
      t.string :uid
      t.references :task, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :closing_date
      t.references :task_status, foreign_key: true
      t.references :imputation, foreign_key: true
      
      t.timestamps
    end
  end
end
