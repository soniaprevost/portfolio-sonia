class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :job_title
      t.text :job_content
      t.date :start_date
      t.date :end_date
      t.string :company_name
      t.string :company_link
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :experiences, :users
  end
end
