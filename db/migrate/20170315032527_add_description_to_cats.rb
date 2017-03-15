class AddDescriptionToCats < ActiveRecord::Migration[5.0]
  def change
    add_column :cats, :description, :text
  end
end
