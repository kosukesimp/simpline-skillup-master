class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.text :example
      t.string :sugested
      t.string :answer
      t.timestamps
    end
  end
end
