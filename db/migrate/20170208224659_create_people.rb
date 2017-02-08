class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
    	t.string :name
    	t.string :main_description
    	t.string :personal_bio
    	t.string :teaching_philosophy
    	t.string :cv_link


      t.timestamps
    end
  end
end
