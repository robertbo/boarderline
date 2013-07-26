class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :author
      t.string :title
      t.text :description
      t.text :response
      t.string :status

      t.timestamps
    end
  end
end
