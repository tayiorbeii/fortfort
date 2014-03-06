class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.references :venue, index: true
      t.references :artist, index: true
      t.date_time :date_of_show

      t.timestamps
    end
  end
end
