class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.references :developer, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
