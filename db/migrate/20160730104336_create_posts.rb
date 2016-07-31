class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :email,              :null => false, :default => ""
      t.string :title,              :null => false, :default => ""
      t.string :copy,              :null => false, :default => ""
      t.text :project,              :null => false, :default => ""
      t.string :starter,              :null => false, :default => ""
      t.date :gather_date,              :null => false, :default => ""
      t.date :gather_end_date,              :null => false, :default => ""
      t.date :activity_date,              :null => false, :default => ""
      t.date :activity_end_date,              :null => false, :default => ""
      t.string :co_worker1,              :null => false, :default => ""
      t.string :co_worker1_num,              :null => false, :default => ""
      t.string :co_worker2,              :null => false, :default => ""
      t.string :co_worker2_num,              :null => false, :default => ""
      t.string :co_worker3,              :null => false, :default => ""
      t.string :co_worker3_num,              :null => false, :default => ""
      t.text :content,              :null => false, :default => ""
      

      t.timestamps null: false
    end
  end
end
