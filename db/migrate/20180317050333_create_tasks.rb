class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks, id: :uuid do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.date :due_date

      t.timestamps
    end
  end
end
