class RemoveJoinTable < ActiveRecord::Migration[6.0]
  def change
    drop_join_table :users, :companies do |t|
      # t.index [:user_id, :company_id]
      # t.index [:company_id, :user_id]
    end
  end
end
