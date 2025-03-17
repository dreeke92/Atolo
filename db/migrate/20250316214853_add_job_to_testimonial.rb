class AddJobToTestimonial < ActiveRecord::Migration[6.1]
  def change
    add_column :testimonials, :job, :string
  end
end
