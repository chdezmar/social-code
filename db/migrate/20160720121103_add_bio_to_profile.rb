class AddBioToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :bio, :string
  end
end
