class AddDesignerToJobs < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :designer, foreign_key: true
  end
end
