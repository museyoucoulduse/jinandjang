class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.boolean :pos_or_not

      t.timestamps
    end
  end
end