class CreateQuestionBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :question_banks do |t|
      t.string :title

      t.timestamps
    end
  end
end
