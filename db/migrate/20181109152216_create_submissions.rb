class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_id
      t.date :time_taken

      t.timestamps
    end
  end
end
