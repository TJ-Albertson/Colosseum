class CreateThumbs < ActiveRecord::Migration[7.0]
  def change
    create_table :thumbs do |t|
      t.integer :tmdbId
      t.integer :userId
      t.integer :value

      t.timestamps
    end
  end
end
