class CreateTestimonials < ActiveRecord::Migration[7.1]
  def change
    create_table :testimonials do |t|
      t.string :client_name
      t.string :profession
      t.text :content
      t.integer :rating
      t.string :image

      t.timestamps
    end
  end
end
