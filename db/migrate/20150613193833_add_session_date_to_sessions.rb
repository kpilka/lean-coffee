class AddSessionDateToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :session_date, :datetime
  end
end
