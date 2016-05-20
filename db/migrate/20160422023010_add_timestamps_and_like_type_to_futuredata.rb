class AddTimestampsAndLikeTypeToFuturedata < ActiveRecord::Migration
  def change
    add_column :futuredata, :like_type, :integer, limit: 1
    add_column :futuredata, :created_at, :datetime, null: false, default: Time.now
    add_column :futuredata, :updated_at, :datetime, null: false, default: Time.now
  end
end
