class ChangeIndexForUsers < ActiveRecord::Migration[6.0]
  def change
    # 元は、provider と uid のインデックスに UNIQUE 制約が付いていた。
    # それは不要であり、ロールバックに際してその制約を復活させる意味は無い。
    # Originally, UNIQUE constraints were added to indices of provider and uid.
    # They were unnecessary, so it's meaningless to add them when rollbacked.
    remove_index :users, :provider
    remove_index :users, :uid
    add_index    :users, [:provider, :uid], unique: true
  end
end
