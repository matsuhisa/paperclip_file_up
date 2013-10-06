class Shop < ActiveRecord::Base
  has_many :imageings, :as => :parent
  has_many :attaches, :through => :imageings
end
