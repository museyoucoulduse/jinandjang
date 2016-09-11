class CreatePosComments < ActiveRecord::Migration[5.0]
  def change
    create_table :pos_comments do |t|
      t.text :body
      t.boolean :positive_reaction
      t.belongs_to :positive

      t.timestamps
    end
  end
end
