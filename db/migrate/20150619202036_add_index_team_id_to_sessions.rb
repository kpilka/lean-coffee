class AddIndexTeamIdToSessions < ActiveRecord::Migration
  def change
    add_index :sessions, :team_id
  end
end
