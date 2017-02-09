class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
    	t.string :title
    	t.belongs_to :person, foreign_key: true
    	t.string :collaborators
    	t.string :location
    	t.string :date
    	t.string :description

      t.timestamps
    end
  end
end
