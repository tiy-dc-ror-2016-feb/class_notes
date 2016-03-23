class StudentsAndPicksMigration < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
    end

    create_table :picks do |t|
      t.integer :student_id
      t.timestamp :picked_at
    end

  end
end
