class CreateNegComments < ActiveRecord::Migration[5.0]
  def change
    create_table :neg_comments do |t|
      t.text :body
      t.boolean :positive_reaction
      t.belongs_to :negative

      t.timestamps
    end
  end
end
