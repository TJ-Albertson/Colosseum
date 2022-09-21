class CreateThumbs < ActiveRecord::Migration[7.0]
  def change
    create_table :thumbs do |t|
      t.string :tmdbId
      t.string :userId
      t.integer :thumb

      t.timestamps
    end
  end
end
