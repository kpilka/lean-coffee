class AddSessionIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :session_id, :integer
  end
end
