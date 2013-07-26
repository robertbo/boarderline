class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :author
      t.string :title
      t.text :description
      t.text :response
      t.text :status

      t.timestamps
    end
  end
end
