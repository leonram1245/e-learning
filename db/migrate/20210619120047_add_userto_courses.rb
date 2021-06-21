class AddUsertoCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
    t.string :title     
    t.text :description    
  end
end
end
