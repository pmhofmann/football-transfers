class CreateRumours < ActiveRecord::Migration[5.2]
  def change
    create_table :rumours do |t|
      t.references :user, foreign_key: true
      t.string :clubfrom
      t.string :clubto
      t.integer :fee
      t.text :content
      t.integer :likelihood
      t.string :player

      t.timestamps
    end
  end
end
