class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
    t.string   "filename"
    t.string   "content_type"
    t.binary   "file_contents"
    t.string   "animalname"
    t.string   "animalabout"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.timestamps null: false
    end
  end
end
