class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
    	t.string :school
    	t.belongs_to :person, foreign_key: true
    	t.string :degree
    	t.string :concentration
    	t.string :start_date
    	t.string :end_date
    	t.string :advisors
    	t.string :honors
    	t.string :extracurriculars

      t.timestamps
    end
  end
end
