class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :user
      t.date       :date
      t.time       :time
      t.references :place
      t.timestamps
    end

    add_index :events, :place_id
  end
end
