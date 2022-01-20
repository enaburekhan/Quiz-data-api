class CreateQuizData < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_data do |t|
      t.string :founder_name
      t.string :email
      t.string :country
      t.string :gender
      t.string :race_of_founder
      t.text :text_box
      t.string :conscious_beauty_credentials
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
