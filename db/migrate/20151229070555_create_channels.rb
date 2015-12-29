class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.integer :pid
      t.string :title
      t.string :url
      t.integer :sort
      t.integer :status
      t.integer :target

      t.timestamps
    end
  end
end
