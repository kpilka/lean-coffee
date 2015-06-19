class RenameSessionDateToNewSessionInSessions < ActiveRecord::Migration
  def change
    rename_column :sessions, :session_date, :new_session
  end
end
