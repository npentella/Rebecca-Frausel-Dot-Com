class CreateTeachings < ActiveRecord::Migration[5.0]
  def change
    create_table :teachings do |t|
    	t.string :subject
    	t.string :school
    	t.string :description
    	t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end
