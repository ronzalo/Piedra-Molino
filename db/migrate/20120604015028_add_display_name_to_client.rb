class AddDisplayNameToClient < ActiveRecord::Migration
  def change
    add_column :clients, :display_name, :string

  end
end
