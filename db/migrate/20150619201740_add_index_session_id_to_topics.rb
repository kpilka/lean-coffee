class AddIndexSessionIdToTopics < ActiveRecord::Migration
  def change
    add_index :topics, :session_id
  end
end
