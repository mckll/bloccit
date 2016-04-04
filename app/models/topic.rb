class Topic < ActiveRecord::Base
  has_many :posts, :sponsoredpost, dependent: :destroy
end
