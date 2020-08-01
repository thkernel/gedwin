class CreateTaskTimeTrackings < ActiveRecord::Migration[5.2]
  def change
    create_table :task_time_trackings do |t|
      t.references :imputation_item, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.string :status

      t.timestamps
    end
  end
end
