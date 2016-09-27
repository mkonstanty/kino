class CreatePerformances < ActiveRecord::Migration
  def self.up
    create_table :performances do |t|
      t.datetime :started_at
      t.integer :movie_id
      t.integer :cinema_id
      t.timestamps
    end
  end

  def self.down
    drop_table :performances
  end
end
