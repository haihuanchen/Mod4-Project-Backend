class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :title
      t.text :description
      t.string :resources
      t.timestamps
    end
  end
end
