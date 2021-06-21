class AddDateToCoursesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :created_at, :datetime
  end
end