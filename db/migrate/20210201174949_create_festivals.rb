class CreateFestivals < ActiveRecord::Migration[6.0]
  def change
    create_table :festivals do |t|
      t.string :name
      t.array :dates
      t.string :image
      t.string :city

      t.timestamps
    end
  end
end
