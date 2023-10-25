class AddUserToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_reference(:players, :user, foreign_key: true, default: User.first.id)
    change_column_default(:players, :user_id, from: nil, to: User.first.id)
  end

end
