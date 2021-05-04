class CreateRequestSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :request_subjects do |t|
      t.references :request, foreign_key: true
      t.string :subject_name
      t.string :status

      t.timestamps
    end
  end
end
