class AddUserIdToHoa < ActiveRecord::Migration[6.1]
  def change
    add_column :hoas, :user_id, :integer
  end
end
