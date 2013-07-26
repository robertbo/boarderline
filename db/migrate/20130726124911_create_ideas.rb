class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :status
      t.string :title
      t.text :description
      t.text :response

      t.timestamps
    end
  end
end
