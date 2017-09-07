class CreateWidgets < ActiveRecord::Migration[5.1]
  def change
    create_table :widgets do |t|
      t.string :title
      t.string :description
      t.text :notes
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
