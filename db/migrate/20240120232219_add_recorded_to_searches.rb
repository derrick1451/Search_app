class AddRecordedToSearches < ActiveRecord::Migration[7.1]
  def change
    add_column :searches, :recorded, :boolean, default: false
  end
end
