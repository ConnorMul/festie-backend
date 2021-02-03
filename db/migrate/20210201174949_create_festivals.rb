class CreateFestivals < ActiveRecord::Migration[6.0]
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :dates, array: true, default: []
      t.string :image
      t.string :city

      t.timestamps
    end
  end
end
