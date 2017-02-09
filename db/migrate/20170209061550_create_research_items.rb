class CreateResearchItems < ActiveRecord::Migration[5.0]
  def change
    create_table :research_items do |t|
    	t.string :title
    	t.belongs_to :person, foreign_key: true
    	t.string :collaborators
    	t.string :description

      t.timestamps
    end
  end
end
