class CreatePositives < ActiveRecord::Migration[5.0]
  def change
    create_table :positives do |t|
      t.string :title
      t.text :description
      t.datetime :when

      t.timestamps
    end
  end
end
