class CreateWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :workshops do |t|
      t.text :description
      t.string :address
      t.date :availability
      t.string :title
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
