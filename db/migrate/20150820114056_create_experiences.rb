class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :job_title
      t.date :start_date
      t.date :end_date
      t.text :mission
      t.string :company

      t.timestamps null: false
    end
  end
end
